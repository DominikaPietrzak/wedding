class AddCompanionNumberToCompanion < ActiveRecord::Migration[5.1]
  def change
    add_reference :companions, :companion_number, foreign_key: true
  end
end
