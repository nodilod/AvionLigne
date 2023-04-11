json.extract! reservation, :id, :comfort_class, :status, :PNR, :seats_count, :user_id, :flight_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
