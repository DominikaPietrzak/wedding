class EaGuestConfirmation < ApplicationRecord
  belongs_to :guest
  has_one :guest_confirmation_status
  belongs_to :event

end
