class TestCase < ApplicationRecord
  belongs_to :problem
  has_many :test_case_solutions, dependent: :destroy
end
