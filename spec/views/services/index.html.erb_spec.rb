require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        name: "Name",
        description: "Description",
        price: 2,
        company: nil
      ),
      Service.create!(
        name: "Name",
        description: "Description",
        price: 2,
        company: nil
      )
    ])
  end

  it "renders a list of services" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
