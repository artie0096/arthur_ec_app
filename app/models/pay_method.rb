class PayMethod < ApplicationRecord
  has_many :orders
end
