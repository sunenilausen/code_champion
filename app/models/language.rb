class Language < ApplicationRecord
  has_many :eval_servers

  validates :name, presence: true
end
