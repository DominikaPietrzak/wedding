class RenameAdminToUserAdmin < ActiveRecord::Migration[5.1]
  def up
    rename_table :admins, :user_admins
  end
  def down
    rename_table :user_admins, :admins
  end
end
