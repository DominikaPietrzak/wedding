class Expense < ApplicationRecord
  belongs_to :admin_user
  has_one :expese_who
  has_one :expense_event

  def self.sum_expense_cost
    Expense.pluck('sum((amount) *(cost))')
  end
end
