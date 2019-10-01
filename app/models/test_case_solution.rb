class TestCaseSolution < ApplicationRecord
  belongs_to :solution
  belongs_to :test_case

  enum status: [:untested, :failing, :passing, :server_unavailable]

  def run_test
    self.status = test_new_state
    save
  end

  private
    def test_result
      data = JSON.parse HTTParty.post(server_with_language.url + "/eval", body: server_body.to_json, headers: server_headers) 
      self.output = data["actual_output"]
      data
    end

    def server_with_language
      EvalServer.find_by(language: solution.language)
    end

    def server_body 
      {code: solution.code, test_input: test_case.input, expected_output: test_case.output}
    end

    def server_headers
      { 'Content-Type' => 'application/json' }
    end

    def test_new_state
      return :no_server_available unless server_with_language.present?
      test_result["status"] == "passed" ? :passing : :failing
    end
end
