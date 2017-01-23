class PropertiesController < ApplicationController
  before_action :check_if_admin, :only=>[:new, :create, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find params[:id]
  end

  def new
    @property = Property.new
  end

  def create
    property = Property.create property_params
    redirect_to property
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    property = Property.find params[:id]
    property.update property_params
    redirect_to property
  end

  def destroy
    property = Property.find params[:id]
    property.destroy
    redirect_to properties_path
  end

  private
  def property_params
    params.require(:property).permit(:name, :image, :address, :postcode, :location,
      :rent, :no_of_bedrooms, :no_of_bathrooms, :capacity, :room_type, :female_male,
      :smoking, :pets, :available_positions)
  end
end
