class DropExpenseStuffsTableAndExpenseServicesTable < ActiveRecord::Migration[5.1]
  def change
     drop_table :expense_stuffs
     drop_table :expense_services
  end
end
