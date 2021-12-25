class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
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

  def create
    Book.create(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end