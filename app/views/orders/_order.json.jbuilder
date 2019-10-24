json.extract! order, :id, :fullname, :email, :phone, :pickup, :quantity, :order_date, :pickup_date, :payed_date, :email_confirmation_sent, :email_pickup_sent, :total_price, :created_at, :updated_at
json.url order_url(order, format: :json)
