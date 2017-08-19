require 'rails_helper'

RSpec.describe "connections/index", type: :view do
  before(:each) do
    assign(:connections, [
      Connection.create!(
        :name => "Name",
        :lecture => nil,
        :section => nil
      ),
      Connection.create!(
        :name => "Name",
        :lecture => nil,
        :section => nil
      )
    ])
  end

  it "renders a list of connections" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
