class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :appointment_type
  belongs_to :appointment_status
end
