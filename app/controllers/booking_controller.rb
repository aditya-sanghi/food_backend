class BookingController
  before_action :authenticate

  def create
    Booking.create(booking_params[:originLatLong], booking_params[:destinationLatLong], booking_params[:foodItemName],
                   booking_params[:originAddress], booking_params[:destinationAddress])
  end

  def cancel
    cancel_params = [:customerId, :bookingId]
    Booking.cancel(cancel_params[:customerId], cancel_params[:bookingId])
  end

  def pick_up
    pick_params = [:delivererId, :bookingId]
    Booking.pick_up(pick_params[:delivererId], pick_params[:bookingId])
  end

  def complete
    complete_params = [:delivererId, :bookingId]
    Booking.pick_up(complete_params[:delivererId], complete_params[:bookingId])
  end

  def show
    show_params = [:customerId, :bookingId]
    Booking.cancel(show_params[:customerId], show_params[:bookingId])
  end


  private

  def booking_params
    [:originLatLong, :destinationLatLong, :foodItemName,
     :originAddress, :destinationAddress]
  end

  def authenticate
    auth_credentials = find_by_client_id_and_pass_key(request.headers['AppId'], request.headers['AppKey'])
    if auth_credentials.nil?
      response.headers["Caution"] = "Unauthenticated Request"
      render json: { statusCode: 401 }, status: :unauthorized
    end
  end