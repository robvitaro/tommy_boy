require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        name: "Name",
        category: 2,
        address_street: "Address Street",
        address_city: "Address City",
        address_state: "Address State",
        address_zip: "Address Zip",
        billing_address_street: "Billing Address Street",
        billing_address_city: "Billing Address City",
        billing_address_state: "Billing Address State",
        billing_address_zip: "Billing Address Zip",
        contact_first_name: "Contact First Name",
        contact_last_name: "Contact Last Name",
        phone: "Phone",
        email: "Email",
        notes: "MyText"
      ),
      Customer.create!(
        name: "Name",
        category: 2,
        address_street: "Address Street",
        address_city: "Address City",
        address_state: "Address State",
        address_zip: "Address Zip",
        billing_address_street: "Billing Address Street",
        billing_address_city: "Billing Address City",
        billing_address_state: "Billing Address State",
        billing_address_zip: "Billing Address Zip",
        contact_first_name: "Contact First Name",
        contact_last_name: "Contact Last Name",
        phone: "Phone",
        email: "Email",
        notes: "MyText"
      )
    ])
  end

  it "renders a list of customers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address Street".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address Zip".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Billing Address Street".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Billing Address City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Billing Address State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Billing Address Zip".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Contact First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Contact Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
