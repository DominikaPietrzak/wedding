class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.float :max
      t.float :mid
      t.float :min

      t.timestamps
    end
  end
end
