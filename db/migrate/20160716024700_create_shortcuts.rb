class CreateShortcuts < ActiveRecord::Migration[5.0]
  def change
    create_table :shortcuts do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
    add_index :shortcuts, :name, unique: true
  end
end
