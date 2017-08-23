require 'rails_helper'

RSpec.describe "notificationtypes/new", type: :view do
  before(:each) do
    assign(:notificationtype, Notificationtype.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new notificationtype form" do
    render

    assert_select "form[action=?][method=?]", notificationtypes_path, "post" do

      assert_select "input[name=?]", "notificationtype[name]"

      assert_select "textarea[name=?]", "notificationtype[description]"
    end
  end
end
