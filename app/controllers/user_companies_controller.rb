class UserCompaniesController < ApplicationController

  def new
    @user_company = UserCompany.new
  end

  def create
    @user = User.find_by(email: params[:email])
    @company = Company.find(params[:company_id])
    @user_companies = UserCompany.all
    @array = []


    @user_companies.each do |user_company| 
      @array << user_company.user_id 
    end

    
    if  @array.include?(@user.id)
   
      # write here what happen if already done


    else
      @user_company = UserCompany.create(user_id: @user.id, company_id: @company.id)

      respond_to do |format|
        format.html { redirect_to company_path, notice: 'inscription réussie' }
        format.js {}
      end
    

  
    end
  end




  def destroy
    @user_companies = UserCompany.find(params[:id])
    @user_companies.destroy

    respond_to do |format|
      format.html { redirect_to company_path, notice: "Fin de collaboration" }
      format.js {}
    end
  end

end
