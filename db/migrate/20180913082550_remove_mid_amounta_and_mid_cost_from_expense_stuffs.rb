class RemoveMidAmountaAndMidCostFromExpenseStuffs < ActiveRecord::Migration[5.1]
  def change
    remove_column :expense_stuffs, :mid_cost
    remove_column :expense_stuffs, :mid_amount
  end
end
