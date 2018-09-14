class ExpensesController < ApplicationController
  before_action :authenticate_admin_user!

  def index
    @expenses = current_admin_user.expenses.all
  end

  def new
    @expense = current_admin_user.expenses.build
  end

  def create
    @expense = current_admin_user.expenses.build(expenses_params)
    @expense.save
  end

  def update
    @expense = current_admin_user.expenses.find(params[:id])
    @expense.update_attributes(expenses_params)
    flash[:success] = "Expense updated"
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
  end

  private

  def expenses_params
    params.require(:expense).permit(:name, :cost, :paydeadline, :amount)
  end

end