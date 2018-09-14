class AddGuestToGuestAdresses < ActiveRecord::Migration[5.1]
  def change
    add_reference :guest_adresses, :guest, foreign_key: true
  end
end
