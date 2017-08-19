require 'rails_helper'

RSpec.describe "studytypes/edit", type: :view do
  before(:each) do
    @studytype = assign(:studytype, Studytype.create!(
      :name => "MyString",
      :symbol => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit studytype form" do
    render

    assert_select "form[action=?][method=?]", studytype_path(@studytype), "post" do

      assert_select "input[name=?]", "studytype[name]"

      assert_select "input[name=?]", "studytype[symbol]"

      assert_select "textarea[name=?]", "studytype[description]"
    end
  end
end
