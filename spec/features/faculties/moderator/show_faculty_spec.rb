require 'rails_helper'

RSpec.feature "Show a faculty - " do
  scenario "A user click of show button" do
    faculty = FactoryGirl.create(:faculty)
    visit "/moderator/faculties/"
    click_link "Show" 
    expect(page).to have_content("Ingenieurwissenschaften")
    expect(page).to have_content("IngWi")
    expect(page).to have_content("Die Ausbildung von Ingenieuren an der htw saar")
    
  end
end