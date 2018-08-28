class AddUserAdminToEvent < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :admin_user, foreign_key: true
  end
end
