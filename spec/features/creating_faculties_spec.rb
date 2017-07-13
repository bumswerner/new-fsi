require "rails_helper"

# - Visit root page
# click on new image



RSpec.feature "Creating Faculty" do
  scenario "A user creates a new faculty" do
    visit "/"
    
    click_link "New Faculty"
    
    fill_in "Name", with: "Ingenieurwissenschaften"
    fill_in "Symbol", with: "IngWi"
    fill_in "Discription", with: "Die Fakultät für Ingenieurwissenschaften"
    
    click_button "Create Faculty"
    
    expect(page).to have_content("Faculty has been created")
    expect(page.current_path).to eq(faculties_path)
  end
end

# Run only this test