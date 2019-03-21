class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @goats = current_user.goats
    @requests = current_user.requests
  end

  def show
    # show tous les bookings d'un user
    # faire un distingo
  end

  def new
    @booking = Booking.new
    @goat = Goat.find(params[:goat_id])
  end

  def create
    # define @booking_duration here
    # binding.pry
    @booking = Booking.new(booking_params)
    # recuperer ici
    # retravailler mes dates, faire total amount, mettre sur booking
    @booking.status = 'pending'
    @booking.beginning_date = params[:beginning_date]
    @booking.end_date = params[:end_date]
    raise
    @booking.total_amount = 100
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def accept
    @booking = current_user.
    @booking.status = :validate
  end

  def deny

  end

  private

  def booking_params
    params.require(:booking).permit(:status, :beginning_date, :end_date, :total_amount, :goat_id, :user_id)
    # @bookings = Booking.where user_id: current_user.id
    # @bookings = current_user.bookings
    # @goats = current_user.goats
    # @requests = current_user.requests
  end
end
