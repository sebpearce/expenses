class IncomeItem < ApplicationRecord
  belongs_to :source,
             class_name: 'IncomeSource',
             foreign_key: 'income_source_id'
  validates :amount, presence: true
end
