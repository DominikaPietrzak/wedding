class CreateExpenseStuffs < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_stuffs do |t|
      t.string :name
      t.float :cost
      t.datetime :paydeadline
      t.timestamps
    end
  end
end
