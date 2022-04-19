class AddProfilesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :user, :profile, polymorphic: true, null: false
  end
end
