class AddIndexToATable < ActiveRecord::Migration[5.2]
  def change
    add_index :assignments, [ :user_id, :learning_id ], :unique => true, :name => 'by_user_and_learning'
  end
end
