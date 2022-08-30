class VehiclesController < ApplicationController
  before_action :find_vehicle, only: [:edit, :update, :show]

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    @vehicle.user = current_user
    @vehicle.save
  end

  def edit
  end

  def update
    @vehicle.update(vehicle_params)
  end

  def show
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:model, :make, :year, :vehicle_type, :passengers, :description, :location, :price)
  end
end
