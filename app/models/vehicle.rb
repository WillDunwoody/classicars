class Vehicle < ApplicationRecord
  include PgSearch::Model
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings

  pg_search_scope :search_by_make_and_model_city,
                  against: %i[make model city],
                  using: {
                    tsearch: { prefix: true }
                  }

  def available?(from, to)
    bookings.where('start_date <= ? AND end_date >= ?', to, from).none?
  end

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
