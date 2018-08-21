class RemoveAdresDataFromGuest < ActiveRecord::Migration[5.1]
  def change
    remove_column :guests, :telephone
    remove_column :guests, :street
    remove_column :guests, :home_number
    remove_column :guests, :country
    remove_column :guests, :town
  end
end
