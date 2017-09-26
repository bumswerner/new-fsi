require "rails_helper"

RSpec.feature "Editing a faculty - " do
  
  before do
    @faculty = Faculty.create(name: "The first Faculty", symbol: "FAK1" , description: "The first Description")
  end
  
  scenario "A moderator updates a faculty" do
    visit "/moderator/faculties/"
    click_link "Edit"
    fill_in "Name", with: "Updated Name"
    fill_in "Symbol", with: "Updated Symbol"
    fill_in "Description", with: "Updated Description"
    click_button "Update Faculty"
    expect(page).to have_content("Faculty was successfully updated.")
    expect(page.current_path).to eq(moderator_faculties_path)
  end
  
  scenario "A moderator fails to update a faculty" do
    visit "/moderator/faculties/"
    click_link "Edit"
    
    fill_in "Name", with: ""
    fill_in "Symbol", with: ""
    fill_in "Description", with: ""
    
    click_button "Update Faculty"
    
    expect(page).to have_content("Faculty has not been updated.")
    expect(page.current_path).to eq(moderator_faculty_path(@faculty))
    
  end
  
end