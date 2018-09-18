class Expense < ApplicationRecord
  belongs_to :admin_user
  belongs_to :event
  belongs_to :newlywed

  def self.sum_expense_cost
    Expense.pluck('sum((amount) *(cost))')
  end
end
