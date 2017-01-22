class ReservationsController < ApplicationController

  before_action :check_if_logged_in
  before_action :check_if_admin, :except=>[:new, :create, :show]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find params[:id]
  end

  def new
    @reservation = Reservation.new
    @properties = Property.all
  end

  def create
    # raise params.inspect
    reservation = Reservation.create reservation_params
    user = User.find_by :email=>reservation.user_email
    reservation.user_id = user.id
    reservation.save
    redirect_to reservation
  end

  def edit
    @reservation = Reservation.find_by :email=>params[:email]
    @properties = Property.all
  end

  def update
    reservation = Reservation.find_by :email=>params[:email]
    reservation.update reservation_params
    redirect_to reservation
  end

  def destroy
    reservation = Reservation.find_by :email=>params[:email]
    reservation.destroy
    redirect_to reservations_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_email, :property_id, :start_date, :end_date,
                                         :no_of_people)
  end
end
