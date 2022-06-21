class UserCompany < ApplicationRecord
  belongs_to :user
  belongs_to :company

  after_create :slack_welcome

  def slack_welcome
    begin
      slack_notifier(self.company.webhook, self.company.channel).ping "Hello #{self.user.email}, tu viens d'être ajouté au channel Slack de #{self.company.name}, c'est ici que tu recevras tes notifications pour tes formations Zorya !"
    rescue => exception
      flash.now[:alert] = "Votre connectique Slack est mal paramétrée, veuillez contacter votre Gestionnaire de compte afin de résoudre votre problème."
    end
    
  end

end
