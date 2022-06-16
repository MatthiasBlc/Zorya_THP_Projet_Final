class UserCompaniesController < ApplicationController

  def destroy
    @user_companies = UserCompany.find(params[:id])
    @user_companies.destroy

    respond_to do |format|
      format.html { redirect_to company_path, notice: "Fin de collaboration" }
      format.js {}
    end
  end

end
