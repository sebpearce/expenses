class IncomeItemSerializer < ActiveModel::Serializer
  attributes :id, :date, :amount, :description, :income_source_id
end
