class Budget < ApplicationRecord
  belongs_to :admin_user
  belongs_to :event

  def self.how_much_money_left_max(budget_event)
    expense_service_cost = ExpenseService.sum_expense_service_cost
    expense_stuff_cost = ExpenseStuff.sum_expense_stuff_cost
    expense_sum = expense_service_cost + expense_stuff_cost
    money_left = budget - expense_sum
    if (money_left < 0)
      puts "Przekroczyłeś budżet maxymalny o #{money_left} zł"
    end
    if (money_left > 0)
      puts "Jesteś #{money_left} powyżej budżetu mazymalnego"
    end
  end

  def self.how_much_money_left_min

  end

end
