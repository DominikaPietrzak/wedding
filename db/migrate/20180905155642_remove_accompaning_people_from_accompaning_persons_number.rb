class RemoveAccompaningPeopleFromAccompaningPersonsNumber < ActiveRecord::Migration[5.1]
  def change
    remove_reference :accompaning_persons_numbers, :accompaning_people
  end
end
