class CreateTrips < ActiveRecord::Migration
  # Latitude/Longitude should use Decimal(9,6)
  def change
    enable_extension 'uuid-ossp'
    create_table :bookings, id: :uuid do |t|
      t.string :originLatLong
      t.string :destinationLatLong
      t.string :originAddress
      t.string :destinationAddress
      t.string :foodItemName
      t.string :status
      t.timestamps null: false
    end
  end
end
