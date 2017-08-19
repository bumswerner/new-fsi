require 'rails_helper'

RSpec.describe "assoziations/index", type: :view do
  before(:each) do
    assign(:assoziations, [
      Assoziation.create!(
        :code => "Code",
        :instructor => "Instructor",
        :category => nil,
        :courseofstudy => nil,
        :lecture => nil
      ),
      Assoziation.create!(
        :code => "Code",
        :instructor => "Instructor",
        :category => nil,
        :courseofstudy => nil,
        :lecture => nil
      )
    ])
  end

  it "renders a list of assoziations" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
