class Gardener < ApplicationRecord
  has_many :ownerships

  validates :first_name, uniqueness: { scope: :last_name }
  validates :first_name :last_name, length: {minimum: 2}
  validates :first_name :last_name, presence: true
end
