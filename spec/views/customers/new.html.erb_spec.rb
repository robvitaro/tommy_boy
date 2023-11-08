require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      name: "MyString",
      category: 1,
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
      email: "MyString",
      notes: "MyText"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[category]"

      assert_select "input[name=?]", "customer[address_street]"

      assert_select "input[name=?]", "customer[address_city]"

      assert_select "input[name=?]", "customer[address_state]"

      assert_select "input[name=?]", "customer[address_zip]"

      assert_select "input[name=?]", "customer[billing_address_street]"

      assert_select "input[name=?]", "customer[billing_address_city]"

      assert_select "input[name=?]", "customer[billing_address_state]"

      assert_select "input[name=?]", "customer[billing_address_zip]"

      assert_select "input[name=?]", "customer[contact_first_name]"

      assert_select "input[name=?]", "customer[contact_last_name]"

      assert_select "input[name=?]", "customer[phone]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "textarea[name=?]", "customer[notes]"
    end
  end
end
