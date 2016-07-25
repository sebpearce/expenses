class AddIncomeSourceRefToIncomeItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :income_items, :income_source, foreign_key: true
  end
end
