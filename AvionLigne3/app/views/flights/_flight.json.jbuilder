json.extract! flight, :id, :business_class_seat, :economic_class_seat, :departure_date, :arrival_date, :created_at, :updated_at
json.url flight_url(flight, format: :json)
