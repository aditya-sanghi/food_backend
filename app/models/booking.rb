class Booking < ActiveRecord::Base
  def initialize(originLatLong, destinationLatLong, foodItemName,
                 originAddress, destinationAddress)

    @originLatLong = originLatLong
    @destinationLatLong = destinationLatLong
    @foodItemName = foodItemName
    @originAddress = originAddress
    @destinationAddress = destinationAddress
  end
end