class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @user = User.new(user_params)

    @user.save ? redirect_to(@user) : render(:new)
  end

  def edit
  end

  def update
    user.update_attributes(user_params) ? redirect_to(user) : render(:edit)
  end

private

  def reviews
    user.reviews.page(params[:page]).per(5)
  end
  helper_method :reviews

  def user_params
    params.require(:user).permit(:screen_name, :avatar)
  end

  def user
    @user ||= params[:id].present? ? User.find(params[:id]) : User.new
  end
  helper_method :user

  def users
    @users ||= User.latest.page(params[:page])
  end
  helper_method :users

end
