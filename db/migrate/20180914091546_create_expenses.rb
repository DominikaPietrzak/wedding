class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.references :admin_user, foreign_key: true
      t.string :name
      t.float :cost
      t.datetime :paydeadline
      t.float :amount

      t.timestamps
    end
  end
end
