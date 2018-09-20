class RenameAccompaningPeopleToCompanion < ActiveRecord::Migration[5.1]
  def change
     rename_table :accompaning_people, :companions
  end
end
