class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @goats = current_user.goats
    @requests = current_user.requests
  end

  # def show
  # end

  def new
    @booking = Booking.new
    @goat = Goat.find(params[:goat_id])
    @owner = User.find(@goat.user_id)
  end

  def create
    @booking = Booking.new(booking_params)
    @goat = Goat.find(params[:goat_id])
    assignations
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    redirect_to bookings_path if @booking.save
  end

  def deny
    @booking = Booking.find(params[:id])
    @booking.status = "denied"
    redirect_to bookings_path if @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:beginning_date, :end_date)
  end

  def assignations
    @booking.user = current_user
    @booking.goat = @goat
    @booking.beginning_date = params[:booking][:beginning_date].to_date
    @booking.end_date = params[:booking][:end_date].to_date
    delta_days = (params[:booking][:end_date].to_date - params[:booking][:beginning_date].to_date).to_i
    @booking.total_amount = delta_days * @goat.daily_price
  end
end
