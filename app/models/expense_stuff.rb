class ExpenseStuff < ApplicationRecord
  belongs_to :admin_user

  def self.sum_expense_stuff_cost
    ExpenseStuff.pluck('sum((amount) *(cost))')
  end

  def self.sum_expense_stuff_max_cost
    ExpenseStuff.pluck('sum((max_amount) *(max_cost))')
  end

  def self.sum_expense_stuff_min_cost
    ExpenseStuff.pluck('sum((min_amount) *(min_cost))')
  end

end
