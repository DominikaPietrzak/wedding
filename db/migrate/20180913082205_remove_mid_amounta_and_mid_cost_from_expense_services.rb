class RemoveMidAmountaAndMidCostFromExpenseServices < ActiveRecord::Migration[5.1]
  def change
    remove_column :expense_services, :mid_cost
    remove_column :expense_services, :mid_amount
  end
end
