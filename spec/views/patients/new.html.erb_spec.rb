require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      first_name: "MyString",
      second_name: "MyString",
      last_name: "MyString",
      second_last_name: "MyString",
      prefer_name: "MyString",
      gender: "MyString",
      DNI: "MyString",
      nationality: "MyString",
      person_in_charge: "MyString",
      relationship: "MyString",
      address: "MyString",
      landline: 1,
      mobile: 1,
      email: "MyString",
      email_notification: false,
      find_method: "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input[name=?]", "patient[first_name]"

      assert_select "input[name=?]", "patient[second_name]"

      assert_select "input[name=?]", "patient[last_name]"

      assert_select "input[name=?]", "patient[second_last_name]"

      assert_select "input[name=?]", "patient[prefer_name]"

      assert_select "input[name=?]", "patient[gender]"

      assert_select "input[name=?]", "patient[DNI]"

      assert_select "input[name=?]", "patient[nationality]"

      assert_select "input[name=?]", "patient[person_in_charge]"

      assert_select "input[name=?]", "patient[relationship]"

      assert_select "input[name=?]", "patient[address]"

      assert_select "input[name=?]", "patient[landline]"

      assert_select "input[name=?]", "patient[mobile]"

      assert_select "input[name=?]", "patient[email]"

      assert_select "input[name=?]", "patient[email_notification]"

      assert_select "input[name=?]", "patient[find_method]"
    end
  end
end
