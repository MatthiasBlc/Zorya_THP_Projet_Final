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
    slack_notifier(user.company.webhook,
                   user.company.channel).ping "La formation #{learning.name} est disponible sur ton espace Zorya ! Connecte toi directement sur ton compte."
  rescue StandardError => e
  end

  def slack_validation_assignment
    slack_notifier(user.company.webhook,
                   user.company.channel).ping "Bien joué ! La formation #{learning.name} a bien été validée."
  rescue StandardError => e
  end
end
