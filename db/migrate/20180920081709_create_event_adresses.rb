class CreateEventAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :event_adresses do |t|
      t.string :home_number
      t.string :town
      t.string :code
      t.string :state
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
