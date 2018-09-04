class CreateAccompaningPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :accompaning_people do |t|
      t.references :guests, foreign_key: true
      t.references :accompaning_persons_numbers, foreign_key: true

      t.timestamps
    end
  end
end
