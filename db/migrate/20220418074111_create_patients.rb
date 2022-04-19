class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.string :second_last_name
      t.string :prefer_name
      t.string :gender
      t.date :date_of_birth
      t.string :DNI
      t.string :nationality
      t.string :person_in_charge
      t.string :relationship
      t.string :address
      t.integer :landline
      t.integer :mobile
      t.string :email
      t.boolean :email_notification
      t.string :find_method

      t.timestamps
    end
  end
end
