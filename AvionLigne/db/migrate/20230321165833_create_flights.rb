class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :business_class_seat
      t.integer :economic_class_seat
      t.datetime :departure_date
      t.datetime :arrival_date

      t.timestamps
    end
  end
end
