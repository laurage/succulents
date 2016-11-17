class Plant < ApplicationRecord
  has_many :ownerships
  has_many :gardeners, through: :ownerships

  validates :name, length: {minimum: 2}
  validates :name, presence: true
end

