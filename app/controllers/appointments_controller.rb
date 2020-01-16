class AppointmentsController < ApplicationController
def show 
 @a= Appointment.find(params[:id])
  end


end
