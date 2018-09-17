class EaGuestConfirmation < ApplicationRecord
  belongs_to :guest
  belongs_to :guest_confirmation_status
  belongs_to :event

end
