class Vehicle < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  has_many :reviews
  has_many :users, through: :bookings
end
