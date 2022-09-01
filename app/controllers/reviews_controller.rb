class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @vehicle = Vehicle.find(params[:vehicle_id])

    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @review.vehicle = @vehicle
    @review.user = current_user
    @review.save

    authorize @review

    redirect_to user_path(current_user)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
