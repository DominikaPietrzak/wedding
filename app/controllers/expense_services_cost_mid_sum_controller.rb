class ExpenseServicesCostMidSumController < ApplicationController

  def index
    @expense_services_cost_mid_sum = ExpenseService.sum_expense_service_mid_cost
  end
end
