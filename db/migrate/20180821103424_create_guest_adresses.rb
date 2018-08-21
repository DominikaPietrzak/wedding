class CreateGuestAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_adresses do |t|
      t.string :street
      t.string :home_number
      t.string :town
      t.string :code
      t.string :state
      t.string :telephone

      t.timestamps
    end
  end
end
