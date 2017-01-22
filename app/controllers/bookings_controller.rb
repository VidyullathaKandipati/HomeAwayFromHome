class BookingsController < ApplicationController

  before_action :check_if_logged_in
  before_action :check_if_admin, :except=>[:new, :create, :show]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find params[:id]
  end

  def new
    @booking = Booking.new
    @services = Service.all
  end

  def create
    booking = Booking.create booking_params
    user = User.find_by :email=>booking.user_email
    booking.user_id = user.id
    booking.save
    redirect_to booking
  end

  def edit
    @booking = Booking.find params[:id]
    @services = Service.all
  end

  def update
    booking = Booking.find params[:id]
    booking.update booking_params
    redirect_to booking
  end

  def destroy
    booking = Booking.find params[:id]
    booking.destroy
    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:user_email, :service_id, :appointment_time)
  end
end
