class BookingsController < ApplicationController
  before_action :set_alibye, only: %i[new create]

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
    # if @booking.start_hour && @booking.checkin_on
    #   @booking.value = (@booking.end_hour - @booking.start_hour).to_f * @booking.bed.price.to_f
    # else
    #   @booking.value = 0
    # end
    if @booking.save
      redirect_to alibye_path(@alibye)
    else
      render new
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :alibye_id, :state, :start_hour, :end_hour, :total_price)
  end

  def set_booking
    @booking = Booking.find(params[:user_id])
  end

  def set_alibye
    @alibye = Alibye.find(params[:alibye_id])
  end
end
