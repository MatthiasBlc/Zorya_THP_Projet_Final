class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @users = @company.users
    @learnings = @company.learnings
    @assignments = Assignment.all
    
    @offers = Offer.all
  end
end
