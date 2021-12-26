class HomesController < ApplicationController
  before_action :authenticate_user!, except: [:top, :show]
  def show
  end
  
  def top
  end
  

  
  
end
