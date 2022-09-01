class Vehicle < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  has_many :reviews
  has_many :users, through: :bookings
  validates :model, :make, :vechicle_type, :city, :country, presence: true
  validates :description, presence: true
end
