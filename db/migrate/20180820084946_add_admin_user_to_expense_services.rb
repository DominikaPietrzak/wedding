class AddAdminUserToExpenseServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :expense_services, :admin_users, foreign_key: true
  end
end
