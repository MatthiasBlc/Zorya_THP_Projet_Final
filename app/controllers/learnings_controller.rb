class LearningsController < ApplicationController
  
  def index
    @learning = Learning.all
  end
  
  def show
    @learning = Learning.find(params[:id])
  end
end
