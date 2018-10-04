class BudgetMaxHowMuchMoneyLeftsController < ApplicationController
   before_action :authenticate_admin_user!
  def index
    @budgets = Budget.all
  end
end
