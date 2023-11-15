require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      name: "MyString",
      description: "MyString",
      price: 1,
      company: nil
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[description]"

      assert_select "input[name=?]", "service[price]"

      assert_select "input[name=?]", "service[company_id]"
    end
  end
end
