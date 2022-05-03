class Patient < ApplicationRecord
  has_one :user, as: :profile
  validates :first_name, :last_name, :date_of_birth, :gender, presence: true
end
