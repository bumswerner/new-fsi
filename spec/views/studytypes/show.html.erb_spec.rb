require 'rails_helper'

RSpec.describe "studytypes/show", type: :view do
  before(:each) do
    @studytype = assign(:studytype, Studytype.create!(
      :name => "Name",
      :symbol => "Symbol",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/MyText/)
  end
end
