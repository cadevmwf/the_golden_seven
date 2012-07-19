class LinesController < ApplicationController
  
  def destroy
    line_id = params[:id]
    @line = TrainLine.find_by_id(line_id)
    
    @line.destroy
    
    redirect_to train_lines_url
  end
  
  def update
    line_id = params[:id]
    name = params[:train_line][:name]
    frequency = params[:train_line][:frequency]
    
    @line = TrainLine.find_by_id(line_id)
    
    @line.name = name
    @line.frequency = frequency
    @line.save
    
    redirect_to train_line_url(@line.id)
  end
  
  def edit
    line_id = params[:id]
    @line = TrainLine.find_by_id(line_id)
  end
  
  def show
    line_id = params[:id]
    @line = TrainLine.find_by_id(line_id)
  end
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    @line = TrainLine.new
  end
  
  def create
    @line = TrainLine.new
    @line.name = params[:train_line][:name]
    @line.frequency = params[:train_line][:frequency]
    @line.save
    
    redirect_to train_lines_url
  end
  
end