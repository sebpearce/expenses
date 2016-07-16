class IncomeItem < ApplicationRecord
  belongs_to :income_source
  validates :amount, presence: true
end
