class Tag < ApplicationRecord
has_many :product_tags
# has_many :product through: :product_tags
end