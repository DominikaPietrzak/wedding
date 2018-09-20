class RemoveAccompaningPersonsNumberIdFromCompanions < ActiveRecord::Migration[5.1]
  def change
    remove_column :companions, :accompaning_persons_number_id
  end
end
