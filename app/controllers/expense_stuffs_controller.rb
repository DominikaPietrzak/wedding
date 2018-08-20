class ExpenseStuffsController < ApplicationController
  before_action :authenticate_admin_user!

  def index
    @expense_stuffs = current_admin_user.expense_stuffs.all
  end

  def new
    @expense_stuff = current_admin_user.expense_stuffs.build
  end

  def create
    @expense_stuff = current_admin_user.expense_stuffs.build(expense_stuffs_params)
    @expense_stuff.save
  end

  def update
    @expense_stuff = current_admmin_user.expense_stuff.find(params[:id])
    @expense_stuff.update_attributes(expense_stuff_params)
    flash[:success] = "Expense stuff updated"
  end

  def destroy
    @expense_stuff = ExpenseStuff.find(params[:id])
    @expense_stuff.destroy
  end


  private

  def expense_stuffs_params
    params.require(:expense_stuff).permit(:name, :cost, :paydeadline, :max_cost, :min_cost, :mid_cost, :max_amount, :mid_amount, :min_amount, :amount)
  end

end
