class Tournament < ApplicationRecord
  has_many :problems

  validates :title, presence: true
end
