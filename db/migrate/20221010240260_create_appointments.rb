class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :appointment_type, null: false, foreign_key: true
      t.references :appointment_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
