class CreateIncomeItems < ActiveRecord::Migration[5.0]
  def change
    create_table :income_items do |t|
      t.date :date
      t.integer :amount
      t.text :description
      t.belongs_to :income_source, index: true

      t.timestamps
    end
  end
end
