class BookingsController < ApplicationController

  before_action :check_if_logged_in
  before_action :check_if_admin, :except=>[:new, :create, :show]

  def index
    service = Service.find params[:service_id]
    @bookings = service.bookings
  end

  def show
    @booking = Booking.find params[:id]
  end

  def new
    @service = Service.find params[:service_id]
    @booking = @service.bookings.new
  end

  def create
    service = Service.find params[:service_id]
    booking = service.bookings.create booking_params
    user = User.find_by :email=>booking.user_email
    booking.user_id = user.id
    booking.save
    redirect_to service_booking_path(service.id, booking.id)
  end

  def edit
    @service = Service.find params[:service_id]
    @booking = Booking.find params[:id]
  end

  def update
    booking = Booking.find params[:id]
    booking.update booking_params
    redirect_to service_booking_path(booking.service_id, booking.id)
  end

  def destroy
    booking = Booking.find params[:id]
    booking.destroy
    redirect_to service_bookings_path(params[:service_id])
  end

  private
  def booking_params
    params.require(:booking).permit(:user_email, :service_id, :appointment_time)
  end
end
