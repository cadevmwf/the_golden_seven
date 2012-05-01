class LinesController < ApplicationController
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    
  end
    
end