class Assignment < ApplicationRecord
  belongs_to :learning
  belongs_to :user


  after_create :inscription_send
  after_update :validation_send
  

  def inscription_send
    UserMailer.new_assignment_email(self).deliver_now
  end

  def validation_send
    UserMailer.validation_assignment_email(self).deliver_now
  end


end
