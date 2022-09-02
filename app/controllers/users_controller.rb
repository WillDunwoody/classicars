class UsersController < ApplicationController
  def show
    @vehicles = Vehicle.all
    authorize @vehicles
  end

  # def user_params
  #   params.require(:user).permit(:title, :body, :photo)
  # end
end
