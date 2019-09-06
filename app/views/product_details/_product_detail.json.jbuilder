json.extract! product_detail, :id, :color, :size, :weight, :regular_price, :selling_price, :stock_quantity, :created_at, :updated_at
json.url product_detail_url(product_detail, format: :json)
