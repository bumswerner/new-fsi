require 'rails_helper'

RSpec.describe "assoziations/new", type: :view do
  before(:each) do
    assign(:assoziation, Assoziation.new(
      :code => "MyString",
      :instructor => "MyString",
      :category => nil,
      :courseofstudy => nil,
      :lecture => nil
    ))
  end

  it "renders new assoziation form" do
    render

    assert_select "form[action=?][method=?]", assoziations_path, "post" do

      assert_select "input[name=?]", "assoziation[code]"

      assert_select "input[name=?]", "assoziation[instructor]"

      assert_select "input[name=?]", "assoziation[category_id]"

      assert_select "input[name=?]", "assoziation[courseofstudy_id]"

      assert_select "input[name=?]", "assoziation[lecture_id]"
    end
  end
end
