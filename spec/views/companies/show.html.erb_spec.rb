require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    assign(:company, Company.create!(
      name: "Name",
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
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address Street/)
    expect(rendered).to match(/Address City/)
    expect(rendered).to match(/Address State/)
    expect(rendered).to match(/Address Zip/)
    expect(rendered).to match(/Billing Address Street/)
    expect(rendered).to match(/Billing Address City/)
    expect(rendered).to match(/Billing Address State/)
    expect(rendered).to match(/Billing Address Zip/)
    expect(rendered).to match(/Contact First Name/)
    expect(rendered).to match(/Contact Last Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
  end
end
