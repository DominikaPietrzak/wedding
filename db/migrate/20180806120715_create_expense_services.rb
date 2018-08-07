class CreateExpenseServices < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_services do |t|
      t.string :name
      t.float :cost
      t.datetime :paydeadline
      t.timestamps
    end
  end
end
