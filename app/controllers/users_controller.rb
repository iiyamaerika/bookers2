class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def index
    @user = current_user
    @users = User.all

  end

  def show
    @user = User.find(params[:id])
    @users = User.all
 
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
    params.require(:user).permit(:name, :image)
  end
  

end