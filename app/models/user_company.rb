class UserCompany < ApplicationRecord
  belongs_to :user
  belongs_to :company

  after_create :slack_welcome

  def slack_welcome
      slack_notifier(self.company.webhook, self.company.channel).ping "Hello #{self.user.email}, tu viens d'être ajouté au channel Slack de #{self.company.name}, c'est ici que tu recevras tes notifications pour tes formations Zorya !"
  end

end
