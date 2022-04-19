require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      first_name: "First Name",
      second_name: "Second Name",
      last_name: "Last Name",
      second_last_name: "Second Last Name",
      prefer_name: "Prefer Name",
      gender: "Gender",
      DNI: "Dni",
      nationality: "Nationality",
      person_in_charge: "Person In Charge",
      relationship: "Relationship",
      address: "Address",
      landline: 2,
      mobile: 3,
      email: "Email",
      email_notification: false,
      find_method: "Find Method"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Second Last Name/)
    expect(rendered).to match(/Prefer Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Dni/)
    expect(rendered).to match(/Nationality/)
    expect(rendered).to match(/Person In Charge/)
    expect(rendered).to match(/Relationship/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Find Method/)
  end
end
