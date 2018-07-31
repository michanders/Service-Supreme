class NotesController < ApplicationController
  
  def new
    @vehicle = Vehicle.find(params[:vehicleid])
  end
  
  
  def create
    unless note_params[:list].empty?
      note = Note.new(note_params)
      note.save
      redirect_to vehicle_path(note_params[:vehicle_id])
     end
  end
    
  def destroy
    note = Note.find(params[:delete])
    vehicle = note.vehicle_id
    note.delete
    redirect_to vehicle_path(vehicle)
  end
  
  
  private
  
  def note_params
    params.require(:note).permit(:list, :vehicle_id)
  end
end