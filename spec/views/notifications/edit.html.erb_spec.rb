require 'rails_helper'

RSpec.describe "notifications/edit", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :title => "MyString",
      :message => "MyText",
      :image => "",
      :notificationtype => nil
    ))
  end

  it "renders the edit notification form" do
    render

    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do

      assert_select "input[name=?]", "notification[title]"

      assert_select "textarea[name=?]", "notification[message]"

      assert_select "input[name=?]", "notification[image]"

      assert_select "input[name=?]", "notification[notificationtype_id]"
    end
  end
end
