class Expense < ApplicationRecord
  belongs_to :admin_user

  def self.sum_expense_service_cost
    Expense.pluck('sum((amount) *(cost))')
  end
end
