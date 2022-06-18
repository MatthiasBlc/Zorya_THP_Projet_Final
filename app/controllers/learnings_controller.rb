class LearningsController < ApplicationController
  def show
    @learning = Learning.find(params[:id])
    @assignment = Assignment.find_by(learning_id: @learning.id, user_id: current_user.id)
  end
end
