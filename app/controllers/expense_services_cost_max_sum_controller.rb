class ExpenseServicesCostMaxSumController < ApplicationController
  def index
    @expense_services_cost_max_sum = ExpenseService.sum_expense_service_max_cost
  end
end
