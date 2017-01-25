class PropertiesController < ApplicationController
  before_action :check_if_admin, :only=>[:new, :create, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def search
    location = params[:search] + ", Australia"
    @properties = Property.near(location, 5, :units => :km)
  end

  def show
    @property = Property.find params[:id]
  end

  def new
    @property = Property.new
  end

  def create
    property = Property.new property_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      property.image = req["public_id"]
    end
    property.save
    redirect_to property
  end

  def edit
    @property = Property.find params[:id]
  end

  def update
    property = Property.find params[:id]
    property.update property_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      property.image = req["public_id"]
      property.save
    end
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
