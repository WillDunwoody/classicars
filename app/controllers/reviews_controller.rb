class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @vehicle = Vehicle.find(params[:vehicle_id])

    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @vehicle = Vehicle.find(params[:vehicle_id])

    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
