class UserMailer < ApplicationMailer
  default from: 'zorya.learning@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://zorya-learning-dev.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome subject')
  end
end
