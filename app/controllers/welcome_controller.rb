class WelcomeController < ApplicationController

  def index
  end

private

  def users
    @users ||= User.latest.page(params[:page]).per(5)
  end
  helper_method :users

  def reviews
    @reviews ||= Review.latest.page(params[:page]).per(8)
  end
  helper_method :reviews

end
