class ExpenseServicesCostSumController < ApplicationController

  def index
    @expense_stuff_cost_sum = ExpenseStuff.sum_expense_stuff_cost
  end
end
