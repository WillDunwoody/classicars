class User < ApplicationRecord
  has_many :vehicles
  has_many :bookings
  has_one_attached :photo
  validates :username, presence: true, uniqueness: true
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
