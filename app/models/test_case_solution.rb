class TestCaseSolution < ApplicationRecord
  belongs_to :solution
  belongs_to :test_case

  enum status: [:untested, :failing, :passing]

  def run_test
    self.status = test_new_state
    save
  end

  private
    def parsed_input
      JSON.parse(test_case.input)
    end

    def parsed_output
      JSON.parse(test_case.output)
    end

    def test_wrapper(code)
      "
      input = #{parsed_input}
      #{code}
      "
    end

    def test_result
      eval(test_wrapper(solution.code))
    end

    def test_new_state
      test_result == parsed_output ? :passing : :failing
    end
end
