class AddColumnInCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :webhook, :string
    add_column :companies, :channel, :string
  end
end
