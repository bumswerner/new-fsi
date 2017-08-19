require 'rails_helper'

RSpec.describe "courseofstudies/show", type: :view do
  before(:each) do
    @courseofstudy = assign(:courseofstudy, Courseofstudy.create!(
      :name => "Name",
      :symbol => "Symbol",
      :description => "MyText",
      :faculty => nil,
      :studytype => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
