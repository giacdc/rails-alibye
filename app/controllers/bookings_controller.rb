class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @booking = Booking.new
  end

  def create
    @bookings = Booking.create
  end

  def create
    @alibye = Alibye.find(params[:alibye])
    @booking = Booking.new(booking_params)
    @booking.alibye = @booking
    @booking.user = current_user
    @booking.status = "Pending validation"
    if @booking.start_hour && @booking.checkin_on
      @booking.value = (@booking.end_hour - @booking.start_hour).to_f * @booking.bed.price.to_f
    else
      @booking.value = 0
    if @booking.save
      redirect_to alibye_path(@booking)
    else
      redirect_to alibye_path(@alibye)
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
