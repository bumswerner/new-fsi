require 'rails_helper'

RSpec.describe "pictures/new", type: :view do
  before(:each) do
    assign(:picture, Picture.new(
      :name => "MyString",
      :image => "",
      :gallery => nil
    ))
  end

  it "renders new picture form" do
    render

    assert_select "form[action=?][method=?]", pictures_path, "post" do

      assert_select "input[name=?]", "picture[name]"

      assert_select "input[name=?]", "picture[image]"

      assert_select "input[name=?]", "picture[gallery_id]"
    end
  end
end
