class ExpenseServicesCostMidSumController < ApplicationController

  def sum
    @sum = ExpenseService.mid_cost.calculate(:count, :all)
  end
end
