class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :expense_items, :expense_source_id, :source_id
    rename_column :income_items, :income_source_id, :source_id
  end
end
