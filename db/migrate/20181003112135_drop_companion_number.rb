class DropCompanionNumber < ActiveRecord::Migration[5.1]
  def change
    drop_table :companion_numbers
  end
end
