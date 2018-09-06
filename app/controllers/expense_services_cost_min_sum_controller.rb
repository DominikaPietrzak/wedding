class ExpenseServicesCostMinSumController < ApplicationController
  def index
    @expense_services_cost_min_sum = ExpenseService.sum_expense_service_min_cost
  end
end
