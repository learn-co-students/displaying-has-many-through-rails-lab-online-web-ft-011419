class DoctorsController < ApplicationController

    def index
        @doctor = Doctor.all
    end

    def new 
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doctor_params)
        if @doctor.save
            redirect_to doctor_path(@doctor)
        end
    end

    def show
        @doctor = Doctor.find_by(params[:id])
        redirect_to doctor_path(@doctor)
    end
end
