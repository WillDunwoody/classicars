class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])

    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review

    if @review.save!
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
