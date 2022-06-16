class CreateUserCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_companies do |t|

      t.timestamps
    end
  end
end
