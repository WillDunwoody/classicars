class Vehicle < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  has_many :users, through: :bookings
  validates :model, :make, :vechicle_type, :city, :country, presence: true
  validates :year, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }
  validates :description, presence: true, length: {
    maximum: 150, too_long: "%´{count}´ characters is the maximum allowed"
  }
end
