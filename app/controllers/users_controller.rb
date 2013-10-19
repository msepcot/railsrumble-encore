class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:screen_name, :avatar))

    render(@user.save ? :show : :new)
  end

  def edit
  end

  def update
  end

private

  def reviews
    user.reviews.page(params[:page]).per(2)
  end
  helper_method :reviews

  def user
    @user ||= params[:id].present? ? User.find(params[:id]) : User.new
  end
  helper_method :user

  def users
    @users ||= User.page(params[:page]).per(3)
  end
  helper_method :users

end
