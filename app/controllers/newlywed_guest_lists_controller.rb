class NewlywedGuestListsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
  end

  def new
  end

  def update_guest_list
    @guest_list_statuses = GuestListStatus.all
    @guests = Guest.all
    @newlyweds = Newlywed.all
    @newlywed_guest_list = NewlywedGuestList.find_by(id: params[:newlywed_guest_list][:newlywed_guest_list_id])
    @newlywed_guest_list.update_attributes(newlywed_guest_list_params)
  end

  def edit_guest_list
    @guest_list_statuses = GuestListStatus.all
    @guests = Guest.all
    @newlyweds = Newlywed.all
  end

  def newlywed_guest_list_params
    params.require(:newlywed_guest_list).permit(:guest_id, :newlywed_id, :guest_list_status_id)
  end

end
