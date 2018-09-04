class AddAccompaningPeopleToAccompaningPersonsNumber < ActiveRecord::Migration[5.1]
  def change
    add_reference :accompaning_persons_numbers, :accompaning_people, foreign_key: true
  end
end
