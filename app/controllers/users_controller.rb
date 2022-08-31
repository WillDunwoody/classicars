class UsersController < ApplicationController
  def show
    @vehicles = Vehicle.all
    @user = User.find(params[:id])
    authorize @user
  end
end
