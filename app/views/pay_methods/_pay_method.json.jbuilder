json.extract! pay_method, :id, :method, :name, :phone_number, :fee, :created_at, :updated_at
json.url pay_method_url(pay_method, format: :json)
