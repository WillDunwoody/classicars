class UsersController < ApplicationController
  def show
    @vehicles = Vehicle.all
    @upcoming = Vehicle.where(:start_date < DateTime.now)
    @user = User.find(params[:id])
    authorize @user
  end

  # def user_params
  #   params.require(:user).permit(:title, :body, :photo)
  # end
end
