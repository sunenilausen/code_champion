class Solution < ApplicationRecord
  DEFAULT_BLOCK_XML = "<xml xmlns=\"https://developers.google.com/blockly/xml\"><variables><variable id=\"M]7C3TsKJ3bRAX`ne-7:\">output</variable><variable id=\"^Vp(/O1bTevV}H^ieaSB\">input</variable></variables><block type=\"variables_set\" id=\"Ua!|:nI}|a#M.#kH$05.\" x=\"29\" y=\"61\"><field name=\"VAR\" id=\"M]7C3TsKJ3bRAX`ne-7:\">output</field><value name=\"VALUE\"><block type=\"variables_get\" id=\"}/r2FVe*nER`rpbf=~nu\"><field name=\"VAR\" id=\"^Vp(/O1bTevV}H^ieaSB\">input</field></block></value></block></xml>"
  belongs_to :problem
  belongs_to :user
  belongs_to :language
  has_many :test_case_solutions, dependent: :destroy

  after_create :create_test_case_solutions

  def run_tests
    test_case_solutions.each(&:run_test)
  end

  def test_status
    return "untested".freeze if test_case_solutions.map(&:status).include?("untested")
    return "failing".freeze if test_case_solutions.map(&:status).include?("failing")
    "passing".freeze
  end

  private
    def create_test_case_solutions
      problem.test_cases.each do |test_case|
        TestCaseSolution.create(
          solution: self,
          status: :untested,
          test_case: test_case
        )
      end
    end
end
