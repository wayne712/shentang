class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :hot_count
      t.integer :sell_count
      t.integer :order
      t.integer :category_id, references: :category
      t.decimal :real_price
      t.decimal :sell_price
      t.decimal :discount_price

      t.timestamps
    end
  end
end
