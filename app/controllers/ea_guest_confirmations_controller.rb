class EaGuestConfirmationsController < ApplicationController

  before_action  :authenticate_guest!

  def update_ea_guest_confirmation
    @ea_guest_confirmations = current_guest.ea_guest_confirmations
  end

  def edit_ea_guest_confirmation
  end

end
