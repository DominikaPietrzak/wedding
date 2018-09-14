class Budget < ApplicationRecord
  belongs_to :admin_user
  belongs_to :event

  def self.how_much_money_left_max(budget)
    expense_cost = Expense.sum_expense_cost
    money_left = budget.max - expense_cost.last

    if (money_left < 0)
      return "Przekroczyłeś budżet maksymalny o " + money_left.to_s + "zł"
    end
    if (money_left > 0)
      return "Jesteś " + money_left.to_s + " zł powyżej budżetu maksymalnego"
    end
  end

  def self.how_much_money_left_min(budget)
    expense_cost = Expense.sum_expense_cost
    money_left = budget.min - expense_cost.last

    if (money_left < 0)
      return  "Przekroczyłeś budżet minimalny o " + money_left.to_s + "zł"
    end

    if (money_left > 0)
      return "Jesteś " + money_left.to_s + " zł powyżej budżetu minimalnego"
    end
  end

end
