class ExpenseStuffMaxCostSumController < ApplicationController
  def index
    @max_cost_sum = ExpenseStuff.sum_expense_stuff_max_cost
  end
end
