class BookingsController < ApplicationController
  def index
    # @bookings = Booking.where user_id: current_user.id
    @bookings = current_user.bookings
    @goats = current_user.goats
    @requests = current_user.requests.uniq
  end
end
