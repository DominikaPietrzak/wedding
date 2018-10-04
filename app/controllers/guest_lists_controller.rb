class GuestListsController < ApplicationController

  before_action :authenticate_admin_user!
  
  def index
    @guests = Guest.all
  end

  def edit
    guest = Guest.find(params[:id])

  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update_attributes(guest_params)
  end



  def guest_params
      params.require(:guest).permit(:name, :surname, :email)
  end
end
