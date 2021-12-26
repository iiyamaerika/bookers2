class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])

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
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def create
    @book = Book.newd(params[:id])
    Book.create(user_params)
    redirect_to users_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end



end