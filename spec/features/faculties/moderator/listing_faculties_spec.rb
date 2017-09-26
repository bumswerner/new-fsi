require "rails_helper"

RSpec.feature "Show all faculties - " do

 before do
    @faculty1 = Faculty.create(name: "The first Faculty", symbol: "FAK1" , description: "The first Description")
    @faculty2 = Faculty.create(name: "The second Faculty", symbol: "FAK2" , description: "The seconf Description")
  end
  
  scenario "A user go back from show to index" do
    visit "/moderator/faculties/#{@faculty1.id}"
    click_link "Back"
    expect(page).to have_content(@faculty1.name)
    expect(page).to have_content(@faculty1.symbol)
    expect(page).to have_content(@faculty1.description)
    expect(page).to have_content(@faculty2.name)
    expect(page).to have_content(@faculty2.symbol)
    expect(page).to have_content(@faculty2.description)
  end
  
  scenario "A user shows all faculties" do
    visit "/moderator/faculties"
    expect(page).to have_content(@faculty1.name)
    expect(page).to have_content(@faculty1.symbol)
    expect(page).to have_content(@faculty1.description)
    expect(page).to have_content(@faculty2.name)
    expect(page).to have_content(@faculty2.symbol)
    expect(page).to have_content(@faculty2.description)
  end
  
  scenario "A user has no faculties" do
    Faculty.delete_all
    visit "/moderator/faculties"
    expect(page).not_to have_content(@faculty1.name)
    expect(page).not_to have_content(@faculty1.symbol)
    expect(page).not_to have_content(@faculty1.description)
    expect(page).not_to have_content(@faculty2.name)
    expect(page).not_to have_content(@faculty2.symbol)
    expect(page).not_to have_content(@faculty2.description)
    
    within ("h1#no-elements") do
      expect(page).to have_content("No Faculties Created")
    end
  end
  
end