class AddAccompaningPersonsNumberToAccompaningPerson < ActiveRecord::Migration[5.1]
  def change
    add_reference :accompaning_people, :accompaning_persons_number, foreign_key: true
  end
end
