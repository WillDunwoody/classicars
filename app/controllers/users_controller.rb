class UsersController < ApplicationController
  def show
    @vehicles = Vehicle.all
    @mycars = current_user.vehicles
    authorize current_user
  end

  # def user_params
  #   params.require(:user).permit(:title, :body, :photo)
  # end
end
