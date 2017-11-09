class ProductPhoto < ApplicationRecord
  belongs_to :product
  default_scope { order(:order, :created_at) }
end
