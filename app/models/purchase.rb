class Purchase < ApplicationRecord
  belongs_to :company
  belongs_to :offer

end
