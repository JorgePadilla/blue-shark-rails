class AddProfilesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :profile, polymorphic: true
  end
end
