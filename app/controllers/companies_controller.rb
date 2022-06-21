class CompaniesController < ApplicationController
  before_action :customer
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

  def customer
    unless current_user.status_customer?
      flash[:danger] = "Vous n'avez pas accès à cette page"
      redirect_to root_path
    end
  end
end
