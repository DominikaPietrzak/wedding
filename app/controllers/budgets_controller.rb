class BudgetsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @budgets = current_admin_user.budgets.all
  end

  def new
    @budget = current_admin_user.budgets.build
  end

  def create
    @budget = current_admin_user.budgets.build(budget_params)
    @budget.save
  end

  def edit
  end

  def update
  end

  def budget_params
    params.require(:event).permit(:min, :max, :mid)
  end
end
