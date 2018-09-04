class CreateGuestLists < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_lists do |t|
      t.references :guests, foreign_key: true
      t.references :newlyweds, foreign_key: true
      t.references :guest_list_statuses, foreign_key: true

      t.timestamps
    end
  end
end
