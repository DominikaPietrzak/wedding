class DropParticiaptionsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :participations
  end
end
