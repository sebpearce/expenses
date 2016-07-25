class ExpenseItem < ApplicationRecord
  belongs_to :source,
             class_name: 'ExpenseSource',
             foreign_key: 'expense_source_id'
  validates :amount, presence: true
end
