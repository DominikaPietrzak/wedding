class CreateExpenseServices < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_services do |t|
      t.string :name
      t.money :cost
      t.datetime :paydeadline
    end
  end
end
