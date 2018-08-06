class AddDataToAdmins < ActiveRecord::Migration[5.1]
  def up
    add_column :admins, :name, :string
    add_column :admins, :surname, :string
    add_column :admins, :telephone, :string
  end

  def down
    remove_column :admins, :name, :string
    remove_column :admins, :surname, :string
    remove_column :admins, :telephone, :string
  end
end
