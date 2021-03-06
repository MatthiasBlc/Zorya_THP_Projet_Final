class Offer < ApplicationRecord
  has_many :purchases
  has_many :offer_learnings
  has_many :learnings, through: :offer_learnings
  has_many :companies, through: :purchases
  has_one_attached :photo

  validates :name, presence: true
end
