class DropEaGuestConfirmation < ActiveRecord::Migration[5.1]
  def change
     drop_table :e_a_guest_confirmation
      drop_table :ea_guest_confirmations
  end
end
