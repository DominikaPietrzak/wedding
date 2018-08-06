class AddAmountTypesToExpenseStuff < ActiveRecord::Migration[5.1]
  def change
    add_column :expense_stuffs, :max_cost, :money
    add_column :expense_stuffs, :min_cost, :money
    add_column :expense_stuffs, :mid_cost, :money
    add_column :expense_stuffs, :max_amount, :integer
    add_column :expense_stuffs, :mid_amount, :integer
    add_column :expense_stuffs, :min_amount, :integer
    add_column :expense_stuffs, :amount, :integer
  end
end
