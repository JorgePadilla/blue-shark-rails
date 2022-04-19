json.extract! patient, :id, :first_name, :second_name, :last_name, :second_last_name, :prefer_name, :gender, :date_of_birth, :DNI, :nationality, :person_in_charge, :relationship, :address, :landline, :mobile, :email, :email_notification, :find_method, :created_at, :updated_at
json.url patient_url(patient, format: :json)
