class Assignment < ApplicationRecord
  belongs_to :learning
  belongs_to :user

  validates :duration, presence: true
end
