class CreateGuestListStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_list_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
