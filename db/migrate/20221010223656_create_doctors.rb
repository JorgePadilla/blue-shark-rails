class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.string :second_last_name
      t.integer :mobile
      t.string :email
      t.string :specialty
      t.integer :college_number

      t.timestamps
    end
  end
end
