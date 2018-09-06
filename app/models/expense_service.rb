class ExpenseService < ApplicationRecord
  belongs_to :admin_user

  def self.sum_expense_service_cost
    ExpenseService.pluck('sum((amount) *(cost))')
  end

  def self.sum_expense_service_max_cost
    ExpenseService.pluck('sum((max_amount) *(max_cost))')
  end

  def self.sum_expense_service_mid_cost
    ExpenseService.pluck('sum((mid_amount) *(mid_cost))')
  end

  def self.sum_expense_service_min_cost
    ExpenseService.pluck('sum((min_amount) *(min_cost))')
  end
end
