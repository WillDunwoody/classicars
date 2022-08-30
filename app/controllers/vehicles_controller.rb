class VehiclesController < ApplicationController
  before_action :find_vehicle, only: [:edit, :update, :show]

  def index
    @vehicles = Vehicle.all

    @vehicles = policy_scope(Vehicle)
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
  end

  def edit
    authorize @vehicle
  end

  def update
    @vehicle.update(vehicle_params)
    authorize @vehicle
  end

  def show
    authorize @vehicle
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:model, :make, :year, :vehicle_type, :passengers, :description, :location, :price)
  end
end
