class CreateExpenseSources < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_sources do |t|
      t.string :name, unique: true

      t.timestamps
    end
    add_index :expense_sources, :name, unique: true
  end
end
