class ExpenseServicesCostSumController < ApplicationController

  def index
    @expense_services_cost_sum = ExpenseService.sum_expense_service_cost.last
  end

end
