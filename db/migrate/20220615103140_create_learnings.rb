class CreateLearnings < ActiveRecord::Migration[5.2]
  def change
    create_table :learnings do |t|
      t.string :name
      t.text :content
      t.integer :duration

      t.timestamps
    end
  end
end
