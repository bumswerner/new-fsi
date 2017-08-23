require 'rails_helper'

RSpec.describe "notificationtypes/edit", type: :view do
  before(:each) do
    @notificationtype = assign(:notificationtype, Notificationtype.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit notificationtype form" do
    render

    assert_select "form[action=?][method=?]", notificationtype_path(@notificationtype), "post" do

      assert_select "input[name=?]", "notificationtype[name]"

      assert_select "textarea[name=?]", "notificationtype[description]"
    end
  end
end
