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

  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.update(assignment_done: DateTime.current.to_date)
      redirect_to user_assignments_path(current_user.id)
    else
      flash.now[:alert] = @assignment.errors.full_messages
      render :edit
    end
  end

  def create
    @user = User.find(params[:user_id])
    @learning = Learning.find(params[:learning_id])
    @assignment = Assignment.create(user_id: @user.id, learning_id: @learning.id)

    respond_to do |format|
      format.html { redirect_to company_path, notice: 'inscription réussie' }
      format.js {}
    end
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to company_path, notice: "Désinscription réussie" }
      format.js {}
    end
  end

end
