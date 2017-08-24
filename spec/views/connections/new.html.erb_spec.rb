require 'rails_helper'

RSpec.describe "connections/new", type: :view do
  before(:each) do
    assign(:connection, Connection.new(
      :name => "MyString",
      :lecture => nil,
      :section => nil
    ))
  end

  it "renders new connection form" do
    render

    assert_select "form[action=?][method=?]", connections_path, "post" do

      assert_select "input[name=?]", "connection[name]"

      assert_select "input[name=?]", "connection[lecture_id]"

      assert_select "input[name=?]", "connection[section_id]"
    end
  end
end