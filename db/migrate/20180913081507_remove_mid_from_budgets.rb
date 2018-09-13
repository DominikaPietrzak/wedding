class RemoveMidFromBudgets < ActiveRecord::Migration[5.1]
  def change
    remove_column :budgets, :mid
  end
end
