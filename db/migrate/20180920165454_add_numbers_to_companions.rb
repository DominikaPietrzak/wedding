class AddNumbersToCompanions < ActiveRecord::Migration[5.1]
  def change
    add_column :companions, :number, :integer
  end
end
