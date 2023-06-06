# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'csv'

CSV.foreach(Rails.root.join('lib/seed_csv/airports.csv'), headers: true) do |row|
  Airport.create( {
                    id: row['airport_id'].to_i,
                    international_code: row['international_code'],
                    name: row['name'],
                    city: row['city'],
                  } )
end

CSV.foreach(Rails.root.join('lib/seed_csv/flights.csv'), headers: true) do |row|
  Flight.create( {
                   number: row['number'].to_i,
                   departure_airport_id: row['departure_airport'].to_i,
                   arrival_airport_id: row['arrival_airport'].to_i,
                   business_class_seat: row['business_class_seats'].to_i,
                   economic_class_seat: row['economy_class_seats'].to_i,
                   departure_date: row['departure_date'].to_datetime,
                   arrival_date: row['departure_date'].to_datetime + row['duration'].to_i.minutes,
                 } )
end


CSV.foreach(Rails.root.join('lib/seed_csv/users.csv'), headers: true) do |row|
  User.create( {
                 email: row['email'],
                 password: row['password'],
                 role: row['roles']
               } )
end