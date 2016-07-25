class AddExpenseSourceRefToExpenseItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :expense_items, :expense_source, foreign_key: true
  end
end
