require 'rails_helper'

RSpec.describe "assoziations/show", type: :view do
  before(:each) do
    @assoziation = assign(:assoziation, Assoziation.create!(
      :code => "Code",
      :instructor => "Instructor",
      :category => nil,
      :courseofstudy => nil,
      :lecture => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Instructor/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
