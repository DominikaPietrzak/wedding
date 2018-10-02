class GuestListsController < ApplicationController


  def index
    @guests = Guest.all
  end

  def edit
    guest = Guest.find(params[:id])

  end

  def update
    binding.pry
    @guest = Guest.find(params[:id])
    @guest.update_attributes(guest_params)
  end



  def guest_params
      params.require(:guest).permit(:name, :surname, :email)
  end
end
