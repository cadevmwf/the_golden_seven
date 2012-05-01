class LinesController < ApplicationController
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    
  end
  
  def create
    @line = TrainLine.new
    @line.name = params[:name]
    @line.frequency = params[:frequency]
    @line.save
    
    redirect_to 'http://localhost:3000/lines'
  end
    
end