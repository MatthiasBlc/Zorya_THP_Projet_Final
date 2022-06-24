class UsersController < ApplicationController
  before_action :sign_out
  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)

    if @user.update(first_name: params[:user][:first_name], last_name: params[:user][:last_name])
      @user.save
      flash[:succes] = 'Vos informations ont bien été mises à jour'
      redirect_to user_path(current_user.id)
    else
      flash[:danger] = 'Des informations sont manquantes'
      redirect_to user_path(current_user.id)
    end
  end

  private

  def sign_out
    redirect_to root_path unless user_signed_in?
  end
end
