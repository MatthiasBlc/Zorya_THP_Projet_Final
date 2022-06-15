class User < ApplicationRecord
  belongs_to :company
  has_many :assignments
  has_many :learnings, through: :assignments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez saisir un email valide s'il vous plaît." }

end
