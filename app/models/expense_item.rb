class ExpenseItem < ApplicationRecord
  belongs_to :expense_source
  validates :amount, presence: true
end
