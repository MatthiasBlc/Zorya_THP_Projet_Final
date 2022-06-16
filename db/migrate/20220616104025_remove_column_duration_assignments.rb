class RemoveColumnDurationAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :duration

  end
end
