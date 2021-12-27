class UsersController < ApplicationController
  before_action :authenticate_user!
  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to edit_user_path(@user)
    else
      render :index
    end
  end

  def index
    @user = current_user
    @users = User.all
    @books = @user.books
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
    @book_new = Book.new
    @books = @user.books
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end





  def create
    @book = Book.newd(params[:id])
    Book.create(user_params)
    redirect_to users_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end


end