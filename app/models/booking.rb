class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  has_many :reviews

  validates :start_date, presence: true
  validates :start_date, comparison: { less_than_or_equal_to: :end_date }
  validates :end_date, presence: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }
end
