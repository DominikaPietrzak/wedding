class AddAdminUserToGuests < ActiveRecord::Migration[5.1]
  def change
    add_reference :guests, :admin_user, foreign_key: true
  end
end
