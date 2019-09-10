class Product < ApplicationRecord
    belongs_to :supplier
  has_many :product_details
  has_many :product_categories
  has_many :product_tags

   accepts_nested_attributes_for :product_tags, allow_destroy: true
   accepts_nested_attributes_for :product_categories, allow_destroy: true
end
