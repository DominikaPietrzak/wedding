class RenameGuestListsToNewlywedGuestLists < ActiveRecord::Migration[5.1]
  def change
    rename_table :guest_lists, :newlywed_guest_lists
  end
end
