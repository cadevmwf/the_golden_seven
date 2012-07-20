class LinesController < ApplicationController
  
  def destroy
    TrainLine.find_by_id(params[:id]).destroy
    
    redirect_to train_lines_url
  end
  
  def update
    @line = TrainLine.find_by_id(params[:id]).
    @line.update_attributes(params[:train_line])
    
    redirect_to train_line_url(@line.id)
  end
  
  def edit
    @line = TrainLine.find_by_id(params[:id])
  end
  
  def show
    @line = TrainLine.find_by_id(params[:id])
    
    respond_to do |format|
      format.html
      format.json { render :json => @line }
    end
  end
  
  def index
    @lines = TrainLine.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @lines }
    end
  end
  
  def new
    @line = TrainLine.new
  end
  
  def create
    @line = TrainLine.create(params[:train_line])
  
    redirect_to train_line_url(@line)
  end
  
end