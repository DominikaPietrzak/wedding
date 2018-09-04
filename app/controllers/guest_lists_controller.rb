class GuestListsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
  end

  def new
  end

  def update_guest_list
    @guests = Guest.all
    @newlyweds = Newlywed.all
    @guest_list = GuestList.find_by(id: params[:guest_list][:guest_list_id])
    @guest_list.update_attributes(guest_list_params)
  end

  def edit_guest_list
    @guests = Guest.all
    @newlyweds = Newlywed.all

    # @guest_list = GuestList.find_by(id: params[:guest_list][:guest_list_id])
  end

  def guest_list_params
    params.require(:guest_list).permit(:guest_id, :newlywed_id, :guest_list_status_id)
  end

end
