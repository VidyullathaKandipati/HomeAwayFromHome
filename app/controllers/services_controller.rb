class ServicesController < ApplicationController
  before_action :check_if_admin, :only=>[:new, :create, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
    @service = Service.find params[:id]
  end

  def new
    @service = Service.new
  end

  def create
    service = Service.create service_params
    redirect_to service
  end

  def edit
    @service = Service.find params[:id]
  end

  def update
    service = Service.find params[:id]
    service.update service_params
    redirect_to service
  end

  def destroy
    service = Service.find params[:id]
    service.destroy
    redirect_to services_path
  end

  private
  def service_params
    params.require(:service).permit(:name, :description, :cost)
  end
end
