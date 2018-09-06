class ExpenseStuffCostMinSumController < ApplicationController
  def index
      @expense_stuff_cost_min_sum = ExpenseStuff.sum_expense_stuff_min_cost
  end
end
