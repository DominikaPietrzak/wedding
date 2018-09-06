class ExpenseStuffCostMaxSumController < ApplicationController
  def index
    @expense_stuff_cost_max_sum = ExpenseStuff.sum_expense_stuff_max_cost
  end
end
