class AddGuestToGuestList < ActiveRecord::Migration[5.1]
  def change
    add_reference :guest_lists, :guest, foreign_key: true
  end
end
