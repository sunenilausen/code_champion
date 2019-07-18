class Solution < ApplicationRecord
  belongs_to :problem
  belongs_to :user
  has_many :test_case_solutions

  after_create :create_test_case_solutions

  def run_tests
    test_case_solutions.each(&:run_test)
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
