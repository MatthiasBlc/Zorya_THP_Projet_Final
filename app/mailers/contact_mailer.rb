class ContactMailer < ApplicationMailer
  default from: 'zorya.learning@gmail.com'
  
  def contact_mail(contact)
    @contact = contact
    @url = 'https://zorya-learning.herokuapp.com/'
    mail(to: 'zorya.learning@yopmail.com', subject: 'Prise de contact via le site')
  end


end
