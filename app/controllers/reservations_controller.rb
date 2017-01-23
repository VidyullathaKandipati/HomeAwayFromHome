class ReservationsController < ApplicationController

  before_action :check_if_logged_in
  before_action :check_if_admin, :except=>[:new, :create, :show]

  def index
    property = Property.find params[:property_id]
    @reservations = property.reservations
  end

  def show
    @reservation = Reservation.find params[:id]
  end

  def new
    @property = Property.find params[:property_id]
    @reservation = @property.reservations.build
  end

  def create
    @property = Property.find params[:property_id]
    @reservation = @property.reservations.new reservation_params
    user = User.find_by :email=>@reservation.user_email
    @reservation.user_id = user.id
    if @reservation.save
      redirect_to property_reservation_path(@reservation.property_id, @reservation.id)
    else
      render :new
    end
  end

  def edit
    @property = Property.find params[:property_id]
    @reservation = Reservation.find params[:id]
  end

  def update
    @property = Property.find params[:property_id]
    @reservation = Reservation.find params[:id]
    if (@reservation.update reservation_params)
      redirect_to property_reservation_path(@reservation.property_id, @reservation.id)
    else
      render :edit
    end
  end

  def destroy
    reservation = Reservation.find params[:id]
    free_available_positions
    reservation.destroy
    redirect_to property_reservations_path(params[:property_id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_email, :property_id, :start_date, :end_date,
                                         :no_of_people)
  end

  def free_available_positions
    property = Property.find params[:property_id]
    reservation = Reservation.find params[:id]
    puts "Adding: #{reservation.no_of_people} people"
    puts "Now current positions: #{property.available_positions}"
    property.available_positions += reservation.no_of_people
    property.save
  end

end
