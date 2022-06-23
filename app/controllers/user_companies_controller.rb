class UserCompaniesController < ApplicationController
  def new
    @user_company = UserCompany.new
  end

  def create
    @user = User.find_by(email: params[:email])
    @company = Company.find(params[:company_id])
    @user_companies = UserCompany.all
    @list_user_company_of_user_id = []

    @user_companies.each do |user_company|
      @list_user_company_of_user_id << user_company.user_id
    end

    if @list_user_company_of_user_id.include?(@user.id)
      flash[:danger] = "Cet utilisateur est déjà rataché à une entreprise ou n'existe pas."
    else
      @user_company = UserCompany.create(user_id: @user.id, company_id: @company.id)

      respond_to do |format|
        format.html { redirect_to company_path, notice: 'Inscription réussie' }
        format.js {}
      end
    end
  end

  def destroy
    @user_companies = UserCompany.find(params[:id])
    @user = @user_companies.user
    @user_companies.destroy

    respond_to do |format|
      format.html { redirect_to company_path, notice: 'Fin de collaboration' }
      format.js {}
    end
  end
end
