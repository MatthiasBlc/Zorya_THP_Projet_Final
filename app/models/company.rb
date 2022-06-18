class Company < ApplicationRecord
  has_many :purchases
  has_many :user_companies
  has_many :users, through: :user_companies
  has_many :offers, through: :purchases
  has_many :learnings, through: :offers
  has_many :assignments, through: :users

  validates :name, presence: true
end
