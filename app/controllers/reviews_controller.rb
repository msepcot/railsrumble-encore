class ReviewsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @review = Review.new(review_params)

    @review.save ? redirect_to(@review) : render(:new)
  end

  def edit
  end

  def update
    review.update_attributes(review_params) ? redirect_to(@review) : render(:edit)
  end

private

  def review_params
    params.require(:review).permit(:title, :content, :rating, :user_id)
  end

  def review
    @review ||= params[:id].present? ? Review.find(params[:id]) : Review.new
  end
  helper_method :review

  def reviews
    @reviews ||= Review.page(params[:page])
  end
  helper_method :reviews

end