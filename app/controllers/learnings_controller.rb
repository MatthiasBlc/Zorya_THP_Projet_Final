class LearningsController < ApplicationController
  before_action :sign_out
  def show
    @learning = Learning.find(params[:id])
    @assignment = Assignment.find_by(learning_id: @learning.id, user_id: current_user.id)
  end

  private

  def sign_out
    redirect_to root_path unless user_signed_in?
  end
end
