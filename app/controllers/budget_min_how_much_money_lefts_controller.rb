class BudgetMinHowMuchMoneyLeftsController < ApplicationController
  def index
    @budgets = Budget.all
  end
end
