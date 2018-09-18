class CreateExpenseEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_events do |t|
      t.references :expense, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
