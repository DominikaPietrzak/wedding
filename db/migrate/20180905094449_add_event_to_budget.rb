class AddEventToBudget < ActiveRecord::Migration[5.1]
  def change
    add_reference :budgets, :event, foreign_key: true
  end
end
