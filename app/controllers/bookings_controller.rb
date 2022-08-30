class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @vehicle = Vehicle.find(params[:vehicle_id])

    authorize @booking
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new(booking_params)

    @booking.vehicle = @vehicle
    @booking.user = current_user
    authorize @booking
    @booking.save
  end

  def edit
    authroize @booking
  end

  def update
    authroize @booking
  end

  def destroy
    authroize @booking
  end

  private

  def booking_params
    params.requre(:booking).permit(:start_date, :end_date, :booking_status)
  end
end
