class Product < ApplicationRecord
  belongs_to :category
  has_many :product_photos, dependent: :destroy
  has_one :first_photo, class_name: "ProductPhoto"

  default_scope { order(:order, :created_at) }
end
