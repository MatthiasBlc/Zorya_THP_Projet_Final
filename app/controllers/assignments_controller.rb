class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @user = User.find(params[:user_id])
    @learning = Learning.find(params[:learning_id])
    @assignments = Assignment.all
    @list_assignment_of_user_id = []
    @list_assignment_of_learning_id = []

    @assignments.each do |assignment|
      @list_assignment_of_user_id << assignment.user_id
    end

    @assignments.each do |assignment|
      @list_assignment_of_learning_id << assignment.learning_id
    end

    if @list_assignment_of_user_id.include?(@user.id) && @list_assignment_of_learning_id.include?(@learning.id)
      flash[:danger] = 'Cet utilisateur est déjà inscrit à cette formation.'
    else
      @assignment = Assignment.create(user_id: @user.id, learning_id: @learning.id)

      respond_to do |format|
        format.html { redirect_to company_path, notice: 'inscription réussie' }
        format.js {}
      end
    end
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

  def destroy
    @user = User.find(params[:user_id])
    @learning = Learning.find(params[:learning_id])
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to company_path, notice: 'Désinscription réussie' }
      format.js {}
    end
  end
end
