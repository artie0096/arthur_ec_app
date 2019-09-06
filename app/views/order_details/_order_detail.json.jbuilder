json.extract! order_detail, :id, :color, :size, :weight, :regular_price, :selling_price, :stock_quantity, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
