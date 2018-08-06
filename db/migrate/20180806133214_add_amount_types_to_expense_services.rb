class AddAmountTypesToExpenseServices < ActiveRecord::Migration[5.1]
  def change
    add_column :expense_services, :max_cost, :money
    add_column :expense_services, :min_cost, :money
    add_column :expense_services, :mid_cost, :money
    add_column :expense_services, :max_amount, :integer
    add_column :expense_services, :mid_amount, :integer
    add_column :expense_services, :min_amount, :integer
    add_column :expense_services, :amount, :integer
  end
end
