class RemoveColumnAssignment < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :name
  end
end
