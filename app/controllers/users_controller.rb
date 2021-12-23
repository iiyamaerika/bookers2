class UsersController < ApplicationController
  def edit
    user = User.find(params[:id])
    @image = user.image
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
