class ChangeGuestsId < ActiveRecord::Migration[5.1]
  def change
    rename_column :accompaning_people, :guests_id, :guest_id
  end
end
