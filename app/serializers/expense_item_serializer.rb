class ExpenseItemSerializer < ActiveModel::Serializer
  attributes :id, :date, :amount, :description, :expense_source_id
end
