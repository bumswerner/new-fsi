require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText",
      :faculty => nil,
      :studytype => nil
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "input[name=?]", "course[symbol]"

      assert_select "textarea[name=?]", "course[description]"

      assert_select "input[name=?]", "course[faculty_id]"

      assert_select "input[name=?]", "course[studytype_id]"
    end
  end
end
