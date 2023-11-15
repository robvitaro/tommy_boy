require 'rails_helper'

RSpec.describe "inventories/new", type: :view do
  before(:each) do
    assign(:inventory, Inventory.new(
      name: "MyString",
      description: "MyString",
      price: 1,
      quantity: 1,
      company: nil
    ))
  end

  it "renders new inventory form" do
    render

    assert_select "form[action=?][method=?]", inventories_path, "post" do

      assert_select "input[name=?]", "inventory[name]"

      assert_select "input[name=?]", "inventory[description]"

      assert_select "input[name=?]", "inventory[price]"

      assert_select "input[name=?]", "inventory[quantity]"

      assert_select "input[name=?]", "inventory[company_id]"
    end
  end
end
