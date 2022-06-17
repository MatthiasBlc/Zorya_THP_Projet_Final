class UserMailer < ApplicationMailer
  default from: 'zorya.learning@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'https://zorya-learning.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome subject')
  end

  def new_assignment_email(assignment)
    @assignment = assignment
    @user = @assignment.user
    @url = 'https://zorya-learning.herokuapp.com/'
    mail(to: @user.email, subject: 'You have a new assignment')
  end

  def validation_assignment_email(assignment)
    @assignment = assignment
    @user = @assignment.user
    @url = 'https://zorya-learning.herokuapp.com/'
    mail(to: @user.email, subject: 'Congratulation, You have finished an assignment')
  end

end
