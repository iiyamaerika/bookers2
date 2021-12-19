class HomesController < ApplicationController
  def edit
    @books = Post.find(params[:id])
  end
  
  def destroy
  end
  
end
