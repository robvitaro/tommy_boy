require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      name: "MyString",
      address_street: "MyString",
      address_city: "MyString",
      address_state: "MyString",
      address_zip: "MyString",
      billing_address_street: "MyString",
      billing_address_city: "MyString",
      billing_address_state: "MyString",
      billing_address_zip: "MyString",
      contact_first_name: "MyString",
      contact_last_name: "MyString",
      phone: "MyString",
      email: "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input[name=?]", "company[name]"

      assert_select "input[name=?]", "company[address_street]"

      assert_select "input[name=?]", "company[address_city]"

      assert_select "input[name=?]", "company[address_state]"

      assert_select "input[name=?]", "company[address_zip]"

      assert_select "input[name=?]", "company[billing_address_street]"

      assert_select "input[name=?]", "company[billing_address_city]"

      assert_select "input[name=?]", "company[billing_address_state]"

      assert_select "input[name=?]", "company[billing_address_zip]"

      assert_select "input[name=?]", "company[contact_first_name]"

      assert_select "input[name=?]", "company[contact_last_name]"

      assert_select "input[name=?]", "company[phone]"

      assert_select "input[name=?]", "company[email]"
    end
  end
end
