class Plant < ApplicationRecord
  has_many :ownerships

  validates :name, length: {minimum: 2}
  validates :name, presence: true
end
