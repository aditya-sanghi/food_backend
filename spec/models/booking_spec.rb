require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'initialise' do
    let(originLatLong) { "1.2324" }
    let(destinationLatLong) { "-1.1222" }
    let(foodItemName) { "martabak" }
    let(originAddress) { "kemang" }
    let(destinationAddress) { "pasaraya" }

    it 'should create a new booking' do
      booking = described_class.new(originLatLong, destinationLatLong, foodItemName,
                                    originAddress, destinationAddress)
      expect(booking.foodItemName).to eq("martabak")
    end

    it 'should cancel booking' do
      booking = described_class.new(originLatLong, destinationLatLong, foodItemName,
                                    originAddress, destinationAddress)
      expect(booking.status).to eq("cancelled")
    end

    it 'should pickup booking' do
      booking = described_class.new(originLatLong, destinationLatLong, foodItemName,
                                    originAddress, destinationAddress)
      expect(booking.status).to eq("picked up")
    end

    it 'should complete booking' do
      booking = described_class.new(originLatLong, destinationLatLong, foodItemName,
                                    originAddress, destinationAddress)
      expect(booking.status).to eq("completed")
    end
  end
end
