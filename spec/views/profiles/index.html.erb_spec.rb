require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :nickname => "Nickname",
        :avatar => "",
        :user => nil
      ),
      Profile.create!(
        :nickname => "Nickname",
        :avatar => "",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end