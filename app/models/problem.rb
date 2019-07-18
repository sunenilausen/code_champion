class Problem < ApplicationRecord
  has_many :users
  has_many :test_cases
  has_many :solutions
end
