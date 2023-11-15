require 'rails_helper'

RSpec.describe "inventories/edit", type: :view do
  let(:inventory) {
    Inventory.create!(
      name: "MyString",
      description: "MyString",
      price: 1,
      quantity: 1,
      company: nil
    )
  }

  before(:each) do
    assign(:inventory, inventory)
  end

  it "renders the edit inventory form" do
    render

    assert_select "form[action=?][method=?]", inventory_path(inventory), "post" do

      assert_select "input[name=?]", "inventory[name]"

      assert_select "input[name=?]", "inventory[description]"

      assert_select "input[name=?]", "inventory[price]"

      assert_select "input[name=?]", "inventory[quantity]"

      assert_select "input[name=?]", "inventory[company_id]"
    end
  end
end
