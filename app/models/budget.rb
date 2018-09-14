class Budget < ApplicationRecord
  belongs_to :admin_user
  belongs_to :event

  def self.how_much_money_left_max(budget)
    expense_cost = Expense.sum_expense_cost
    money_left = budget.max - expense_sum
    if (money_left < 0)
      puts "Przekroczyłeś budżet maksymalny o #{money_left} zł"
    end
    if (money_left > 0)
      puts "Jesteś #{money_left} zł powyżej budżetumaksymalnego"
    end
  end

  def self.how_much_money_left_min(budget)
    expense_cost = Expense.sum_expense_cost
    money_left = budget.min - expense_sum
    if (money_left < 0)
      puts "Przekroczyłeś budżet minimalny o #{money_left} zł"
    end
    if (money_left > 0)
      puts "Jesteś #{money_left} zł powyżej budżetu minimalnego"
    end
  end

end
