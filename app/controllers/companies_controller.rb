class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @users = @company.users
    @learnings = @company.learnings
    # @offers = @company.offers
    @offers = Offer.all
  end
end
