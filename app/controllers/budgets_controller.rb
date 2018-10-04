class BudgetsController < ApplicationController

  before_action :authenticate_admin_user!

  def index
    @budgets = current_admin_user.budgets.all
  end

  def new
    @budget = current_admin_user.budgets.build
    @events = Event.all
  end

  def create
    @budget = current_admin_user.budgets.build(budget_params)
    @budget.save
  end


  def edit_budgets

  end

  def update_budgets
    @budget = Budget.find_by(params[:budget][:id])
    @budget.update_attributes(budget_params)
  end

  def budget_params
    params.require(:budget).permit(:min, :max, :mid, :event_id, :budget_id)
  end
end
