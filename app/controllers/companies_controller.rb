class CompaniesController < ApplicationController
  before_action :customer_or_administrator
  def show
    @company = Company.find(params[:id])
    if current_user.company != @company
      flash[:danger] = "Vous n'avez pas accès à cette page"
      redirect_to root_path
    end
    @users = @company.users
    @learnings = @company.learnings
    @assignments = Assignment.all
    @offers = Offer.all
    @user_companies = UserCompany.all
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update(channel: params[:company][:channel], webhook: params[:company][:webhook])
      @company.save
      flash[:success] = 'Vos informations ont bien été enregistrées'
      redirect_to company_path(params[:id])
    else
      flash[:danger] = 'Des informations sont manquantes'
      redirect_to company_path(params[:id])
    end
  end

  def learnings
    @company = Company.find(params[:id])
    @learnings = @company.learnings
    @users = @company.users
    @assignments = Assignment.all

    respond_to do |format|
      format.html { redirect_to company_path }
      format.js
    end
  end

  def offers
    @company = Company.find(params[:id])
    @learnings = @company.learnings
    @users = @company.users
    @offers = Offer.all
    @assignments = Assignment.all

    respond_to do |format|
      format.html { redirect_to company_path }
      format.js
    end
  end

  def users
    @company = Company.find(params[:id])
    @learnings = @company.learnings
    @users = @company.users
    @offers = Offer.all
    @assignments = Assignment.all
    @user_companies = UserCompany.all

    respond_to do |format|
      format.html { redirect_to company_path }
      format.js
    end
  end

  private

  def customer_or_administrator
    if user_signed_in?
      unless current_user.status_customer? || current_user.status_administrator?
        flash[:danger] = "Vous n'avez pas accès à cette page"
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
