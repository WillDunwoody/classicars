class VehiclesController < ApplicationController
  # before_action :authenticate_user!, only:[:new, :create, :edit, :update]
  before_action :find_vehicle, only: [:edit, :update, :show]

  def index
    if params[:location].present?
      @vehicles = policy_scope(Vehicle).where(city: params[:location])
    else
      @vehicles = policy_scope(Vehicle)
    end
    @user = current_user
  end

  def new
    @vehicle = Vehicle.new
    @user = current_user
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
    @user = current_user
    authorize @vehicle
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:model, :make, :year, :passengers, :description, :location, :price, photos: [])
  end
end
