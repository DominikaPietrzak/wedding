class CreateExpenseWhos < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_whos do |t|
      t.references :expense, foreign_key: true
      t.references :newlywed, foreign_key: true

      t.timestamps
    end
  end
end
