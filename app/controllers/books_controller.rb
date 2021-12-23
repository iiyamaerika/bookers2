class BooksController < ApplicationController
  def index
  end
  
  def show
  end
  
  def new
    @comment = comment.new
  end
  
  def create
    comment = comment.new(comment-params)
    comment.save
    redirect_to'/books/:id'
  end
  
  
end
