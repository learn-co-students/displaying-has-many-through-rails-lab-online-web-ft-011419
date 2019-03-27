class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def default_time
        new_time = self.appointment_datetime.strftime("%B %d, %Y at %k:%M")
    end
end
