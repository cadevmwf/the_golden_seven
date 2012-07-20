class LinesController < ApplicationController
  
  def destroy
    @line = TrainLine.find_by_id(params[:id])
    @line.destroy
    
    redirect_to train_lines_url
  end
  
  def update
    @line = TrainLine.find_by_id(params[:id])
    @line.update_attributes(params[:train_line])
    
    redirect_to train_line_url(@line.id)
  end
  
  def edit
    @line = TrainLine.find_by_id(params[:id])
  end
  
  def show
    @line = TrainLine.find_by_id(params[:id])
  end
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    @line = TrainLine.new
  end
  
  def create
    @line = TrainLine.create(params[:train_line])
  
    redirect_to train_lines_url
  end
  
end