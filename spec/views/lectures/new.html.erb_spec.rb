require 'rails_helper'

RSpec.describe "lectures/new", type: :view do
  before(:each) do
    assign(:lecture, Lecture.new(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new lecture form" do
    render

    assert_select "form[action=?][method=?]", lectures_path, "post" do

      assert_select "input[name=?]", "lecture[name]"

      assert_select "input[name=?]", "lecture[symbol]"

      assert_select "textarea[name=?]", "lecture[description]"
    end
  end
end
