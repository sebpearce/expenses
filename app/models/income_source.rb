class IncomeSource < ApplicationRecord
  has_many :income_item
  validates :name, presence: true
end
