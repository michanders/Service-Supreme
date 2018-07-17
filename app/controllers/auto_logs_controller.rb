class AutoLogsController < ApplicationController
  
  def create
    auto = AutoLog.new(auto_params)
    auto.save
    redirect_to vehicle_path(auto_params[:vehicle_id])
  end
  
  
  private
  
  def auto_params
    params.require(:auto_entry).permit(:entry, :vehicle_id)
  end
end
