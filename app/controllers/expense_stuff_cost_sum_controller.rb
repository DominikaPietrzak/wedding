class ExpenseStuffCostSumController < ApplicationController
  def index
    @expense_stuff_cost_sum = ExpenseStuff.sum_expense_stuff_cost.last
  end
end
