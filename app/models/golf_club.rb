class GolfClub < ApplicationRecord
  # Associations
  has_many :users
  has_many :reservations

  # Validations
  validates :name, presence: true
end
