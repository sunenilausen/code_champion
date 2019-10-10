class Solution < ApplicationRecord
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
