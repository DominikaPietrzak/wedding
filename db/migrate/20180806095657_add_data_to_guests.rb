class AddDataToGuests < ActiveRecord::Migration[5.1]
  def up
    add_column :guests, :name, :string
    add_column :guests, :surname, :string
    add_column :guests, :telephone, :string
    add_column :guests, :street, :string
    add_column :guests, :home_number, :string
    add_column :guests, :town, :string
    add_column :guests, :country, :string
  end
  def down
    remove_column :guests, :name, :string
    remove_column :guests, :surname, :string
    remove_column :guests, :telephone, :string
    remove_column :guests, :street, :string
    remove_column :guests, :home_number, :string
    remove_column :guests, :town, :string
    remove_column :guests, :country, :string
  end
end
