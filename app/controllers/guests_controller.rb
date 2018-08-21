class GuestsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @guests = current_admin_user.guests.all
  end

  def new_guest
    @guest = current_admin_user.guests.build
  end

  def create
    @guest = current_admin_user.guests.build(guest_params)
    @guest.save
  end

  def update
    @guest = current_admin_user.guests.find(params[:id])
    @guest.update_attributes(guest_params)
    flash[:success] = "Guest updated"
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
  end


  private

  def guest_params
    params.require(:guest).permit(:name, :surname, :telephone, :street, :home_number, :town, :country, :email)
  end

end
