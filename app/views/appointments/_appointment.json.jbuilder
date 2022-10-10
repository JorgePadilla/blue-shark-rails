json.extract! appointment, :id, :date, :patient_id, :doctor_id, :appointment_type_id, :appointment_status_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
