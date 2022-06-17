class OffersController < ApplicationController
  before_action :sign_in

  def index
    @offers = Offer.all
  end


  private
  def sign_in
    if user_signed_in?
      redirect_to user_path(current_user.id)
    else
    end
  end

end
