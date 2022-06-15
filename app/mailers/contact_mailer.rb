class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    @url = 'https://zorya-learning-dev.herokuapp.com/'
    mail(to: 'zorya.learning@gmail.com', subject: 'Prise de contact via le site')
  end


end
