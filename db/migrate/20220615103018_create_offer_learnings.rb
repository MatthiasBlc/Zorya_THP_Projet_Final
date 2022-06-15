class CreateOfferLearnings < ActiveRecord::Migration[5.2]
  def change
    create_table :offer_learnings do |t|

      t.timestamps
    end
  end
end
