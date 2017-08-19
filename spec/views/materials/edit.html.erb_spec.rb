require 'rails_helper'

RSpec.describe "materials/edit", type: :view do
  before(:each) do
    @material = assign(:material, Material.create!(
      :name => "MyString",
      :discription => "MyText",
      :data => "",
      :section => nil,
      :lecture => nil
    ))
  end

  it "renders the edit material form" do
    render

    assert_select "form[action=?][method=?]", material_path(@material), "post" do

      assert_select "input[name=?]", "material[name]"

      assert_select "textarea[name=?]", "material[discription]"

      assert_select "input[name=?]", "material[data]"

      assert_select "input[name=?]", "material[section_id]"

      assert_select "input[name=?]", "material[lecture_id]"
    end
  end
end
