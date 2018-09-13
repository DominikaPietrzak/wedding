class CreateGuestConfirmationStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_confirmation_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
