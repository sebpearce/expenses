class ExpenseSource < ApplicationRecord
  has_many :expense_item
  validates :name, presence: true
end
