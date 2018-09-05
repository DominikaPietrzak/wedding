class AddAdminUserToBudget < ActiveRecord::Migration[5.1]
  def change
    add_reference :budgets, :admin_user, foreign_key: true
  end
end
