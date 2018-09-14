class BudgetMaxHowMuchMoneyLeftsController < ApplicationController
  def index
    @budgets = Budget.all
  end
end
