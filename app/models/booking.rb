class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :start_date, presence: true, comparison: {
    less_than_or_equal_to: :end_date, message: "Start date must be less then end date"
  }
  validates :end_date, presence: true, comparison: {
    greater_than_or_equal_to: :start_date, message: "End date must be greater then start date"
  }
end
