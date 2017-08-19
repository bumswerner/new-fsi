require 'rails_helper'

RSpec.describe "lectures/index", type: :view do
  before(:each) do
    assign(:lectures, [
      Lecture.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText"
      ),
      Lecture.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of lectures" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
