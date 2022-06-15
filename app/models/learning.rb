class Learning < ApplicationRecord
  has_many :offer_learnings
  has_many :assignments
  has_many :offers, through: :offer_learnings
  has_many :users, through: :assignments
end
