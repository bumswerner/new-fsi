require 'rails_helper'

RSpec.feature "Deleting a Faculty - " do
  
  before do
    @faculty = Faculty.create(name: "The first Faculty", symbol: "FAK1" , description: "The first Description")
  end
  
  scenario "A moderator deletes a Faculty from index page" do
    visit "/moderator/faculties/"
    click_link "Delete"
    expect(page).to have_content("Faculty was successfully destroyed.")
    expect(current_path).to eq(moderator_faculties_path)
  end
  
  scenario "A moderator deletes a Faculty form show page" do
    visit "/moderator/faculties/#{@faculty.id}"
    click_link "Delete"
    expect(page).to have_content("Faculty was successfully destroyed.")
    expect(current_path).to eq(moderator_faculties_path)
  end

end

RSpec.feature "Deleting Faculty" do
  scenario "A user delete a faculty" do
    faculty = FactoryGirl.create(:faculty)
    
    visit "/moderator/faculties"
    click_link "Delete"
    expect(page).to have_content("Faculty was successfully destroyed.")
    expect(page.current_path).to eq(moderator_faculties_path)
    
  end
end