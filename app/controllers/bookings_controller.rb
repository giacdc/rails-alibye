class BookingsController < ApplicationController
  before_action :set_alibye, only: %i[new create]
  before_action :set_booking, only: %i[destroy]

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.alibye_id = @alibye.id
    @booking.user = current_user
    @booking.state = "Pending validation"
    years_elapsed = @booking.end_date.year - @booking.start_date.year
    days_elapsed = @booking.end_date.day - @booking.start_date.day
    hours_elapsed = @booking.end_date.hour - @booking.start_date.hour
    time_elapsed = hours_elapsed + days_elapsed * 24 + years_elapsed *365
    @booking.total_price = @alibye.price_per_hour * time_elapsed
    if @booking.save
      redirect_to bookings_path
    else
      render new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :alibye_id, :state, :start_date, :end_date, :total_price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_alibye
    @alibye = Alibye.find(params[:alibye_id])
  end
end
