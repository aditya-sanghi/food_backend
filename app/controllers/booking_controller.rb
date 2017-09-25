class BookingController
  def create
    Booking.create(booking_params[:originLatLong], booking_params[:destinationLatLong], booking_params[:foodItemName],
                   booking_params[:originAddress], booking_params[:destinationAddress])
  end


  private

  def booking_params
    [:originLatLong, :destinationLatLong, :foodItemName,
     :originAddress, :destinationAddress]
  end
end