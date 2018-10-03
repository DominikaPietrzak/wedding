class DropEaGuestConfirmation < ActiveRecord::Migration[5.1]
  def change
      drop_table :ea_guest_confirmations
  end
end
