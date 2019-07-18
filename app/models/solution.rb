class Solution < ApplicationRecord
  belongs_to :problem
  belongs_to :user
  has_many :test_case_solutions
end
