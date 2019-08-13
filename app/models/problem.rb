class Problem < ApplicationRecord
  has_many :users
  has_many :test_cases, dependent: :destroy
  has_many :solutions, dependent: :destroy
  belongs_to :tournament, optional: true
end
