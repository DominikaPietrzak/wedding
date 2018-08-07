class ExpenseService < ApplicationRecord
  composed_of :cost,
            :class_name => 'Money',
            :mapping => %w(cost cents),
            :converter => Proc.new { |value| Money.new(value) }
end
