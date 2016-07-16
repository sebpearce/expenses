class CreateExpenseItems < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_items do |t|
      t.date :date
      t.integer :amount
      t.text :description
      t.belongs_to :expense_source, index: true

      t.timestamps
    end
  end
end
