class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :vehicle_type, presence: true
  validates :passengers, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: {
    minimum: 100,
    too_short: "Your description is too short, min 100 characters"
  }
  validates :location, presence: true
  validates :price, presence: true
end
