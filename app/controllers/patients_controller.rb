class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    redirect_to patient_path(@patient)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private

  def patient_params
    params.permit[:patient].require(:name, :age)
  end

end
