class AppointmentsController < ApplicationController

    def index 
        @appointments = Appointment.all
    end

    def new 
        @appontment = Appointment.new
    end

    def create 
        @appointment = Appointment.create(appointment_params)
        if @appointment.save
        redirect_to appointment_path(@appointment)
    end

    def show
        @appointment = Appointment.find_by(params[:id])
        redirect_to appointment_path(@appointment)
    end

    private

    def appointment_params
        @appointment

end
