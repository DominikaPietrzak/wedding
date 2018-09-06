class ExpenseStuff < ApplicationRecord
  belongs_to :admin_user

  def expense_stuff_amount

  end

  def self.sum_expense_stuff
    ExpenseStuff.pluck('sum((amount) *(cost))')
  end
end
