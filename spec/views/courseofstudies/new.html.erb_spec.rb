require 'rails_helper'

RSpec.describe "courseofstudies/new", type: :view do
  before(:each) do
    assign(:courseofstudy, Courseofstudy.new(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText",
      :faculty => nil,
      :studytype => nil
    ))
  end

  it "renders new courseofstudy form" do
    render

    assert_select "form[action=?][method=?]", courseofstudies_path, "post" do

      assert_select "input[name=?]", "courseofstudy[name]"

      assert_select "input[name=?]", "courseofstudy[symbol]"

      assert_select "textarea[name=?]", "courseofstudy[description]"

      assert_select "input[name=?]", "courseofstudy[faculty_id]"

      assert_select "input[name=?]", "courseofstudy[studytype_id]"
    end
  end
end
