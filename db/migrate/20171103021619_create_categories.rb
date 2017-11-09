class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :parent_id, default: 0
      t.integer :order, default: 0

      t.timestamps

      t.index :parent_id 
    end
  end
end
