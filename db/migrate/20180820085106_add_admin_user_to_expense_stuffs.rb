class AddAdminUserToExpenseStuffs < ActiveRecord::Migration[5.1]
  def change
    add_reference :expense_stuffs, :admin_users, foreign_key: true
  end
end
