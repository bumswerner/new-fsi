require 'rails_helper'

RSpec.describe "galleries/index", type: :view do
  before(:each) do
    assign(:galleries, [
      Gallery.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Gallery.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
