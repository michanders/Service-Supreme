class AutoLogsController < ApplicationController
  
  def new
    @vehicle = Vehicle.find(params[:vehicleid])
  end
  
  def create
    auto = AutoLog.new(auto_params)
    auto.save
    redirect_to vehicle_path(auto_params[:vehicle_id])
  end
  
  def destroy
    log = AutoLog.find(params[:delete])
    vehicle = log.vehicle_id
    log.delete
    redirect_to vehicle_path(vehicle)
  end
  
  
  private
  
  def auto_params
    params.require(:auto_entry).permit(:entry, :vehicle_id)
  end
end
