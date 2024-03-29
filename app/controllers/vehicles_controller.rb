class VehiclesController < ApplicationController
  # before_action :authenticate_user!, only:[:new, :create, :edit, :update]
  before_action :find_vehicle, only: %i[edit update show destroy]

  def index
    @vehicles = policy_scope(Vehicle).check_params(params[:location], params[:from], params[:to])

    @user = current_user
  end

  def new
    @vehicle = Vehicle.new
    authorize @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    @vehicle.save
    authorize @vehicle

    redirect_to user_path(current_user)
  end

  def edit
    authorize @vehicle
  end

  def update
    @vehicle.update(vehicle_params)
    authorize @vehicle
  end

  def show
    @booking = Booking.new
    @booking_review = Booking.where(user: current_user, vehicle: @vehicle).first
    @bookings = @vehicle.bookings
    @review = Review.new
    @markers = [{ lat: @vehicle.latitude, lng: @vehicle.longitude }]

    authorize @vehicle
  end

  def destroy
    @vehicle.destroy
    authorize @vehicle

    redirect_to user_path(current_user)
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:v_model, :v_make, :year, :passengers, :description, :city, :country, :price, :address, photos: [])
  end
end
