class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :start_date, presence: true
  validates :start_date, comparison: { greater_than_or_equal_to: :end_date }
  validates :end_date, presence: true
  validates :end_date, comparison: { less_than_or_equal_to: :start_date }
  validates :booking_status, presence: true
end
