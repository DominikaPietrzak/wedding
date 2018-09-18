class AddAdminUserToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :admin_user, foreign_key: true
  end
end
