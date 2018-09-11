class ExpenseStuffCostMidSumController < ApplicationController
  def index
    @expense_stuff_cost_mid_sum = ExpenseStuff.sum_expense_stuff_mid_cost.last
  end
end
