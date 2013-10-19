class ReviewsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @review = Review.new(review_params)
    @review.band = Band.where(name: params[:band][:name].squish).first_or_initialize

    @review.save ? redirect_to(@review) : render(:new)
  end

  def edit
  end

  def update
    review.band = Band.where(name: params[:band][:name].squish).first_or_initialize
    review.attributes = review_params
    review.save ? redirect_to(@review) : render(:edit)
  end

private

  def review_params
    params.require(:review).permit(
      :title, :content, :rating, :user_id, :played_at, :venue,
      ticket_attributes: [:id, :user_id, :event_code, :section, :row, :seat, :stub]
    )
  end

  def review
    @review ||= begin
      r = params[:id].present? ? Review.find(params[:id]) : Review.new(params.permit(:user_id))
      r.ticket ||= Ticket.new
      r
    end
  end
  helper_method :review

  def band
    @band = review.band || Band.new
  end
  helper_method :band

  def reviews
    @reviews ||= Review.page(params[:page])
  end
  helper_method :reviews

end
