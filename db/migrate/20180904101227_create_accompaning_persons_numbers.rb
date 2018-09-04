class CreateAccompaningPersonsNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :accompaning_persons_numbers do |t|
      t.integer :number

      t.timestamps
    end
  end
end
