require 'rails_helper'

RSpec.describe "pictures/edit", type: :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :name => "MyString",
      :image => "",
      :gallery => nil
    ))
  end

  it "renders the edit picture form" do
    render

    assert_select "form[action=?][method=?]", picture_path(@picture), "post" do

      assert_select "input[name=?]", "picture[name]"

      assert_select "input[name=?]", "picture[image]"

      assert_select "input[name=?]", "picture[gallery_id]"
    end
  end
end
