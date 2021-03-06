class VehiclesController < ApplicationController
  before_action :authenticate_user!

  def index
    @vehicles = Vehicle.all.where(:user_id => current_user)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user

    if @vehicle.save
      redirect_to @vehicle
    else
      render 'new'
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    if @vehicle.update(vehicle_params)
      redirect_to vehicle_path(@vehicle)
    else
      render 'edit'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

    redirect_to vehicles_path
  end

  private
    def vehicle_params
      params.require(:vehicle).permit(:license_plate, :vehicle_model)
    end
end