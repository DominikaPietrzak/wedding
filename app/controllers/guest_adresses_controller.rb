class GuestAdressesController < ApplicationController

  before_action :authenticate_admin_user!, only: [:index]
  before_action :authenticate_guest!, only: [:new, :update]

  def index

  end

  def show
    @guest_adress = GuestAdress.find(params[:id])
  end
  def new
    @guest_adress = current_guest.build_guest_adress
  end

  def create
    @guest_adress = current_guest.build_guest_adress(adress_params)
    @guest_adress.save
    redirect_to @guest_adress
  end

  def edit
    @guest_adress = GuestAdress.find(params[:id])
  end
  def update
    @guest_adress = GuestAdress.find(params[:id])
    @guest_adress.update_attributes(adress_params)
  end

  def delete
    @guest_adress = GuestAdress.find_by(:id)
    @guest_adress.destroy
  end

  def adress_params
    params.require(:guest_adress).permit(:guest_id, :street, :home_number, :town, :state, :telephone, :code)
  end

end
