class ExpenseSource < ApplicationRecord
  has_many :expense_item
end
