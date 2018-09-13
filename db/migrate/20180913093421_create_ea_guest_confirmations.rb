class CreateEaGuestConfirmations < ActiveRecord::Migration[5.1]
  def change
    create_table :ea_guest_confirmations do |t|
      t.references :guest, foreign_key: true
      t.references :guest_confirmation_status, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
