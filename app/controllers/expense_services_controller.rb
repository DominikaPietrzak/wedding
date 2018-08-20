class ExpenseServicesController < ApplicationController

before_action :authenticate_admin_user!

def index
  @expense_services = current_admin_user.expense_services.all
end

def new
  @expense_service = current_admin_user.expense_services.build
end

def create
  @expense_service = current_admin_user.expense_services.build(expense_services_params)
  @expense_service.save
end

def update

end

def delete

end

private

def expense_services_params
  params.require(:expense_service).permit(:name, :cost, :paydeadline, :max_cost, :min_cost, :mid_cost, :max_amount, :mid_amount, :min_amount, :amount)
end

end
