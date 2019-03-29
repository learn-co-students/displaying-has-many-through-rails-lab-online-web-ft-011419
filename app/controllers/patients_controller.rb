class PatientsController < ApplicationController
    
    def index 
        @patients = Patient.all
    end

    def new 
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
        if @patient.save
            redirect_to patient_path(@patient)
        end
    end

    def show 
        @patient = Patient.find_by(params[:id])
    end
end
