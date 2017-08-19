require 'rails_helper'

RSpec.describe "studytypes/index", type: :view do
  before(:each) do
    assign(:studytypes, [
      Studytype.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText"
      ),
      Studytype.create!(
        :name => "Name",
        :symbol => "Symbol",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of studytypes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
