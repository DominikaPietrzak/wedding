class AddAmountTypesToExpenseServices < ActiveRecord::Migration[5.1]
  def change
    add_column :expense_services, :max_cost, :float
    add_column :expense_services, :min_cost, :float
    add_column :expense_services, :mid_cost, :float
    add_column :expense_services, :max_amount, :float
    add_column :expense_services, :mid_amount, :float
    add_column :expense_services, :min_amount, :float
    add_column :expense_services, :amount, :float
  end
end
