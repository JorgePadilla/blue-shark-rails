require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
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
      ),
      Patient.create!(
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
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Second Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Second Last Name".to_s, count: 2
    assert_select "tr>td", text: "Prefer Name".to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
    assert_select "tr>td", text: "Dni".to_s, count: 2
    assert_select "tr>td", text: "Nationality".to_s, count: 2
    assert_select "tr>td", text: "Person In Charge".to_s, count: 2
    assert_select "tr>td", text: "Relationship".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Find Method".to_s, count: 2
  end
end
