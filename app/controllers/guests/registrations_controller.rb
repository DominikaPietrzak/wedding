# frozen_string_literal: true

class Guests::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  before_action :authenticate_admin_user!
  # GET /resource/sign_up
  # def new
  #   super
  # end

  def index
    @guests = Guests.all
  end
  # POST /resource
  def new
    @guest = Guest.new
  end

   def create
     password_length = 6
     password = Devise.friendly_token.first(password_length)

     @guest = Guest.new(guest_params)
     @guest.password = password
     @guest.admin_user_id = current_admin_user.id
     binding.pry
     @guest.save
     if @guest.save
       Guest.create_event_attendance(@guest,current_admin_user)
       NewlywedGuestList.create_guest_list_for_added_guest(@guest, current_admin_user)
       Companion.create_accompaning_person_for_added_guest(@guest, current_admin_user)
       EaGuestConfirmation.guest_confirmation(@guest)
    end
   end

  # GET /resource/edit
   def edit
     @guest = Guest.find(params[:id])
   end

  # PUT /resource
   def update
     @guest = Guest.find(params[:id])
     @guest.update_attributes(guest_params)
   end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  def guest_params
    params.require(:guest).permit(:name, :surname, :email)
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
