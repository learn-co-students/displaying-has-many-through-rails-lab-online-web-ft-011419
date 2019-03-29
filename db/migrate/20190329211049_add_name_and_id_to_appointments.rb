class AddNameAndIdToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :name, :string
    add_column :appointments, :doctor_id, :integer
    add_column :appointments, :patient_id, :integer
  end
end
