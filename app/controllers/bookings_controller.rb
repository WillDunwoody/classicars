class BookingsController < ApplicationController
  # def new
  #   @vehicle = Vehicle.find(params[:vehicle_id])
  #   @booking = Booking.new

  #   authorize @booking
  # end

  def create
    @booking = Booking.new(booking_params)
    @vehicle = Vehicle.find(params[:vehicle_id])

    @booking.vehicle = @vehicle
    @booking.user = current_user
    authorize @booking
    @booking.save

    redirect_to vehicle_path(@vehicle)
  end

  def edit
    authorize @booking
  end

  def update
    authorize @booking
  end

  def destroy
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :booking_status, :vehicle_id)
  end
end
