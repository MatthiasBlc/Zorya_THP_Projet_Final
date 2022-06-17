class UserMailer < ApplicationMailer
  default from: 'zorya.learning@gmail.com'

  def welcome_email(user)
    @user = user
    @email = 'zorya.learning@gmail.com'
    @website ='https://zorya-learning.herokuapp.com/'
    @url = 'https://zorya-learning.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenu sur Zorya')
  end

  def new_assignment_email(assignment)
    @assignment = assignment
    @user = @assignment.user
    @url = 'https://zorya-learning.herokuapp.com/users/sign_in'
    @email = 'zorya.learning@gmail.com'
    @website ='https://zorya-learning.herokuapp.com/'
    mail(to: @user.email, subject: 'Zorya - Tu viens de recevoir une nouvelle formation')
  end

  def validation_assignment_email(assignment)
    @assignment = assignment
    @user = @assignment.user
    @email = 'zorya.learning@gmail.com'
    @website ='https://zorya-learning.herokuapp.com/'
    mail(to: @user.email, subject: 'Zorya - Bravo formation validée')
  end

end
