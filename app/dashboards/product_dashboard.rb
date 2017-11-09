require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    category: Field::BelongsTo,
    product_photos: Field::HasMany,
#    first_photo: Field::HasOne,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    hot_count: Field::Number,
    sell_count: Field::Number,
    order: Field::Number,
    real_price: Field::String.with_options(searchable: false),
    sell_price: Field::String.with_options(searchable: false),
    discount_price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    first_photo_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :category,
    :name,
    :sell_count,
#    :product_photos,
#    :first_photo,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :category,
    :product_photos,
#    :first_photo,
    :id,
    :name,
    :description,
    :hot_count,
    :sell_count,
    :order,
    :real_price,
    :sell_price,
    :discount_price,
    :created_at,
    :updated_at,
#    :first_photo_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :product_photos,
#    :first_photo,
    :name,
    :description,
    :hot_count,
    :sell_count,
    :order,
    :real_price,
    :sell_price,
    :discount_price,
#    :first_photo_id,
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(product)
    #"Product ##{product.id}"
    product.name
  end
end
