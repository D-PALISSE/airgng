class BookingsController < ApplicationController
  def index
    # @bookings = Booking.where user_id: current_user.id
    @bookings = current_user.bookings
  end
end
