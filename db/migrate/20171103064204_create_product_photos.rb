class CreateProductPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :product_photos do |t|
      t.integer :product_id, references: :product
      t.string :path, null: false
      t.integer :order, default: 0

      t.timestamps
    end
  end
end
