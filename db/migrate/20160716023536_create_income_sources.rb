class CreateIncomeSources < ActiveRecord::Migration[5.0]
  def change
    create_table :income_sources do |t|
      t.string :name, unique: true

      t.timestamps
    end
    add_index :income_sources, :name, unique: true
  end
end
