class Assignment < ApplicationRecord
  belongs_to :learning
  belongs_to :user

  after_create :inscription_send, :slack_new_assignment
  after_update :validation_send, :slack_validation_assignment


  def inscription_send
    UserMailer.new_assignment_email(self).deliver_now
  end

  def validation_send
    UserMailer.validation_assignment_email(self).deliver_now
  end
  
  def slack_new_assignment
    begin
      slack_notifier(self.user.company.webhook, self.user.company.channel).ping "Hello #{self.user.email}, La formation #{self.learning.name} est disponible sur ton espace Zorya ! Connecte toi directement sur ton compte."
    rescue => exception
    end
  end

  def slack_validation_assignment
    begin
      slack_notifier(self.user.company.webhook, self.user.company.channel).ping "Bien joué #{self.user.mail} ! La formation #{self.learning.name} a bien été validée."
    rescue => exception
    end
  end
end
