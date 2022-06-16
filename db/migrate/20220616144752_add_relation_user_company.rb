class AddRelationUserCompany < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_companies, :user, foreign_key: true
    add_reference :user_companies, :company, foreign_key: true
  end
end
