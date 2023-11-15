require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  let(:service) {
    Service.create!(
      name: "MyString",
      description: "MyString",
      price: 1,
      company: nil
    )
  }

  before(:each) do
    assign(:service, service)
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(service), "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[description]"

      assert_select "input[name=?]", "service[price]"

      assert_select "input[name=?]", "service[company_id]"
    end
  end
end
