json.extract! doctor, :id, :first_name, :second_name, :last_name, :second_last_name, :mobile, :email, :specialty, :college_number, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
