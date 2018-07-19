class VehiclesController < ApplicationController

  def index
  end

  def show
    @vehicle = Vehicle.find(params[:id])
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
  
  def oilchange
    vehicle = Vehicle.find(params[:vehicle][:id])
    vehicle.update(mileage: params[:vehicle][:mileage])
    log = AutoLog.new(entry: ("Oil change @ " + params[:vehicle][:mileage]).to_s, vehicle_id: params[:vehicle][:id])
    log.save
    vehicle.save
    redirect_to vehicle_path(vehicle.id)
  end
  
  def mpg
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(mpg: @vehicle.mpg_calc(params[:miles], params[:gallons]))
    @vehicle.save
    redirect_to vehicle_path(@vehicle.id)
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
