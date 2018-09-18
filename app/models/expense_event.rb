class ExpenseEvent < ApplicationRecord
  belongs_to :expense
  belongs_to :event
end
