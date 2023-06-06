class AddNumberToFlight < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :number, :integer
  end
end
