class UserCompany < ApplicationRecord
  belongs_to :user
  belongs_to :company

  after_create :slack_welcome

  def slack_welcome
    slack_notifier(company.webhook,
                   company.channel).ping "Hello #{user.email}, tu viens d'être ajouté au channel Slack de #{company.name}, c'est ici que tu recevras tes notifications pour tes formations Zorya !"
  rescue StandardError => e
  end
end
