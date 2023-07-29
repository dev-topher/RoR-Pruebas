json.extract! order, :id, :total_payment, :order_date, :product_id, :client_id, :payment_type_id, :created_at, :updated_at
json.url order_url(order, format: :json)
