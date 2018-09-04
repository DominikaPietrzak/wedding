class AddNewlywedToGuestList < ActiveRecord::Migration[5.1]
  def change
    add_reference :guest_lists, :newlywed, foreign_key: true
  end
end
