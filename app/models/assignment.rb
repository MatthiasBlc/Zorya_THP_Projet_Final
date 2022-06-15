class Assignment < ApplicationRecord
  belongs_to :learning
  belongs_to :user

  validates :name, presence: true
  validates :duration, presence: true
end
