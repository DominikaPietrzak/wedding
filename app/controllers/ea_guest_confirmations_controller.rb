class EaGuestConfirmationsController < ApplicationController

  before_action  :authenticate_guest!, only: [:update_ea_guest_confirmation, :edit_ea_guest_confirmation]
  before_action :authenticate_admin_user!, only: [:admin_edit_ea_guest_confirmation,  :admin_update_ea_guest_confirmation]
  def update_ea_guest_confirmation
    @confirmations = GuestConfirmationStatus.all
    @ea_guest_confirmations = current_guest.ea_guest_confirmations
    @ea_guest_confirmation = EaGuestConfirmation.find_by(id: params[:ea_guest_confirmation][:ea_guest_confirmation_id])
    @ea_guest_confirmation.update_attributes(guest_confirmation_params)
  end

  def edit_ea_guest_confirmation
    @ea_guest_confirmations = current_guest.ea_guest_confirmations
    @confirmations = GuestConfirmationStatus.all
  end

  def admin_edit_ea_guest_confirmation
    @confirmations = GuestConfirmationStatus.all
  end

  def admin_update_ea_guest_confirmation
    @confirmations = GuestConfirmationStatus.all
  end

  def guest_confirmation_params
    binding.pry
    params.require(:ea_guest_confirmation).permit(:guest_confirmation_status_id )
  end
end
