class BooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    book = Book.new(book_params)
    book.user_id = current_user.id
    if book.save
      redirect_to book_path(book.id)
    else
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
    if @pbook.save
      redirect_to book_path(@book)
    else
      render :show
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update(@book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
