class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :duration
      t.datetime :assignment_done

      t.timestamps
    end
  end
end
