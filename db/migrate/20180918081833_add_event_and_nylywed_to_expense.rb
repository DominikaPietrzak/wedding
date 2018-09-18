class AddEventAndNylywedToExpense < ActiveRecord::Migration[5.1]
  def change
    add_reference :expenses, :newlywed, foreign_key: true
    add_reference :expenses, :event, foreign_key: true
  end
end
