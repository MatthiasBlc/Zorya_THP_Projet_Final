class User < ApplicationRecord
  has_one :user_company
  has_one :company, through: :user_company
  has_many :assignments
  has_many :learnings, through: :assignments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez saisir un email valide s'il vous plaît." }

  validate :password_complexity

  enum status: {
    user: 0,
    customer: 1,
    administrator: 2
  }, _prefix: true

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/

    errors.add :password,
               'Votre mot de passe doit contenir minimum 8 caractères, 1 majuscule, 1 minuscule, 1 chiffre et 1 caractère spécial (#?!@$%^&*-).'
  end
end
