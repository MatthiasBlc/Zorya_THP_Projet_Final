class User < ApplicationRecord
  has_one :user_company
  has_one :company, through: :user_company
  has_many :assignments
  has_many :learnings, through: :assignments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez saisir un email valide s'il vous plaît." }

  enum status: {
    user: 0,
    customer: 1,
    administrator: 2
  }, _prefix: true

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
