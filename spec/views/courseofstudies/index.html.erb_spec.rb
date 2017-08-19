require 'rails_helper'

RSpec.describe "courseofstudies/index", type: :view do
  before(:each) do
    assign(:courseofstudies, [
      Courseofstudy.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText",
        :faculty => nil,
        :studytype => nil
      ),
      Courseofstudy.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText",
        :faculty => nil,
        :studytype => nil
      )
    ])
  end

  it "renders a list of courseofstudies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
