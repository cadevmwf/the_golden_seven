class LinesController < ApplicationController
  
  def destroy
    TrainLine.find_by_id(params[:id]).destroy
    
    redirect_to train_lines_url
  end
  
  def update
    @line = TrainLine.find_by_id(params[:id])
        
    if @line.update_attributes(params[:train_line])
      redirect_to train_line_url(@line), :notice => "Picture was successfully updated."
    else
      flash[:notice] = "Something went wrong."
      render 'edit'
    end
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
    @line = TrainLine.new(params[:train_line])
    
    if @line.save
      redirect_to train_line_url(@line), :notice => "Picture was successfully saved."
    else
      flash[:notice] = "Something went wrong."
      render 'new'
    end
  end
  
end