class DropSourceId < ActiveRecord::Migration[5.0]
  def change
    remove_column :expense_items, :source_id
    remove_column :income_items, :source_id
  end
end
