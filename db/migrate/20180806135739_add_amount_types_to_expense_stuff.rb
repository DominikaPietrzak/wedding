class AddAmountTypesToExpenseStuff < ActiveRecord::Migration[5.1]
  def change
    add_column :expense_stuffs, :max_cost, :float
    add_column :expense_stuffs, :min_cost, :float
    add_column :expense_stuffs, :mid_cost, :float
    add_column :expense_stuffs, :max_amount, :float
    add_column :expense_stuffs, :mid_amount, :float
    add_column :expense_stuffs, :min_amount, :float
    add_column :expense_stuffs, :amount, :float
  end
end
