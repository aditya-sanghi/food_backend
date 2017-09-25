class Booking < ActiveRecord::Base
  def initialize(originLatLong, destinationLatLong, foodItemName,
                 originAddress, destinationAddress)

    @originLatLong = originLatLong
    @destinationLatLong = destinationLatLong
    @foodItemName = foodItemName
    @originAddress = originAddress
    @destinationAddress = destinationAddress
    @status = "created"
  end

  def show(booking_id, customer_id)
    booking = Booking.where(booking_id: booking_id).first
    if booking.customer_id == customer_id
      booking
    else
      "unauthorised customer"
    end
  end

  def pickup(booking_id, deliverer_id)
    booking = Booking.where(booking_id: booking_id).first
    if booking.deliverer_id == deliverer_id
      booking.status = "picked_up"
    else
      "unauthorised customer"
    end
  end

  def complete(booking_id, deliverer_id)
    booking = Booking.where(booking_id: booking_id).first
    if booking.deliverer_id == deliverer_id
      booking.status = "completed"
    else
      "unauthorised customer"
    end
  end

  def cancel(booking_id, customer_id)
    booking = Booking.where(booking_id: booking_id).first
    if booking.customer_id == customer_id
      booking.status = "cancelled"
    else
      "unauthorised customer"
    end
  end
end