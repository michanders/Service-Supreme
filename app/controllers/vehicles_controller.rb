class VehiclesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    vehicle = Vehicle.new(vehicle_params)
    vehicle.save
    redirect_to user_path(current_user.id)
  end

  def update
  end
  
  def destroy
    Vehicle.delete(params[:delete])
    redirect_to user_path(current_user.id)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year, :color, :mpg, :mileage, :user_id)
  end
end
