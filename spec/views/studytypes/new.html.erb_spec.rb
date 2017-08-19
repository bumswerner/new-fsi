require 'rails_helper'

RSpec.describe "studytypes/new", type: :view do
  before(:each) do
    assign(:studytype, Studytype.new(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new studytype form" do
    render

    assert_select "form[action=?][method=?]", studytypes_path, "post" do

      assert_select "input[name=?]", "studytype[name]"

      assert_select "input[name=?]", "studytype[symbol]"

      assert_select "textarea[name=?]", "studytype[description]"
    end
  end
end
