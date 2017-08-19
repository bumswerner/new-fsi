require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        :name => "Name",
        :discription => "MyText",
        :data => "",
        :section => nil,
        :lecture => nil
      ),
      Material.create!(
        :name => "Name",
        :discription => "MyText",
        :data => "",
        :section => nil,
        :lecture => nil
      )
    ])
  end

  it "renders a list of materials" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
