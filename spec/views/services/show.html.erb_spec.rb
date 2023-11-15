require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    assign(:service, Service.create!(
      name: "Name",
      description: "Description",
      price: 2,
      company: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
