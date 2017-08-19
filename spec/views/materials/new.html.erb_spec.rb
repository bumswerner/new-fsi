require 'rails_helper'

RSpec.describe "materials/new", type: :view do
  before(:each) do
    assign(:material, Material.new(
      :name => "MyString",
      :discription => "MyText",
      :data => "",
      :section => nil,
      :lecture => nil
    ))
  end

  it "renders new material form" do
    render

    assert_select "form[action=?][method=?]", materials_path, "post" do

      assert_select "input[name=?]", "material[name]"

      assert_select "textarea[name=?]", "material[discription]"

      assert_select "input[name=?]", "material[data]"

      assert_select "input[name=?]", "material[section_id]"

      assert_select "input[name=?]", "material[lecture_id]"
    end
  end
end
