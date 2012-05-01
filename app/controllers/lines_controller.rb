class LinesController < ApplicationController
  
  def index
    @lines = TrainLine.all
  end
    
end