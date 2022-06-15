class AddRelation < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :company, foreign_key: true
    add_reference :assignments, :learning, foreign_key: true
    add_reference :assignments, :user, foreign_key: true
    add_reference :offer_learnings, :learning, foreign_key: true
    add_reference :offer_learnings, :offer, foreign_key: true
    add_reference :purchases, :offer, foreign_key: true
    add_reference :purchases, :company, foreign_key: true
  end
end
