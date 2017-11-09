class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true, length: { maximum: 100 }

  default_scope { order(:order, :created_at) }

  def products_with_img
    products.joins('left join product_photos on product_photos.id=products.first_photo_id').
      select('products.*, product_photos.path')
  end
end
