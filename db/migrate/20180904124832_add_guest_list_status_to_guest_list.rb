class AddGuestListStatusToGuestList < ActiveRecord::Migration[5.1]
  def change
    add_reference :guest_lists, :guest_list_status, foreign_key: true
  end
end
