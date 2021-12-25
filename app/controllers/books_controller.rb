class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def show
    @book = Book.new
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path([:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
