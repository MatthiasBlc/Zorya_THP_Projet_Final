class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @user = User.find(params[:user_id])
    @learning = Learning.find(params[:learning_id])
    puts '%'*120
    puts @user.id
    puts @learning.id
    puts '%'*120

    @assignment = Assignment.create(user_id: @user.id, learning_id: @learning.id)

    respond_to do |format|
      format.html { redirect_to assignments_path, notice: 'inscription réussie' }
      format.js {}
    end
  end


end
