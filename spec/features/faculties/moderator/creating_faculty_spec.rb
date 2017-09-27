require "rails_helper"

RSpec.feature "Creating Faculty - " do
  
  before do 
    # Login via Moderator
    @moderator = User.new(username: "moderator", email: "admin@fsi.de", password: "massick", roles: "moderator")
    @moderator.confirmed_at = Date.today
    @moderator.save
    visit "/"
    click_link "Login"
    fill_in "Email", with: @moderator.email
    fill_in "Password", with: @moderator.password
    click_button "Sign in"
  end
  
 
  
  scenario "A user creates a new faculty" do
    visit "/moderator/faculties"
    click_link "New" 
    fill_in "Name", :with => "Ingenieurwissenschaften"
    fill_in "Symbol", with: "IngWi"
    fill_in "Description", with: "Die Fakultät für Ingenieurwissenschaften"
    click_button "Create Faculty"
    expect(page).to have_content("Faculty was successfully created.")
    expect(page.current_path).to eq(moderator_faculties_path)
  end
  
  scenario "A user fails to create a new faculty" do
    visit "moderator/faculties"
    click_link "New" 
    fill_in "Name", with: ""
    fill_in "Symbol", with: ""
    fill_in "Description", with: ""
    click_button "Create Faculty"
    expect(page).to have_content("Faculty has not been created")
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Symbol can't be blank")
    expect(page).to have_content("Description can't be blank")
  end
end

RSpec.feature "Updating Faculty - " do
  
  before do 
    # Login via Moderator
    @moderator = User.new(username: "moderator", email: "admin@fsi.de", password: "massick", roles: "moderator")
    @moderator.confirmed_at = Date.today
    @moderator.save
    visit "/"
    click_link "Login"
    fill_in "Email", with: @moderator.email
    fill_in "Password", with: @moderator.password
    click_button "Sign in"
  end
  scenario "A user update a faculty" do
    faculty = FactoryGirl.create(:faculty)
    visit "/moderator/faculties"
    click_link "Edit" 
    fill_in "Name", with: "Ingenieurwissenschaften updated"
    fill_in "Symbol", with: "IngWi updated"
    fill_in "Description", with: "Die Fakultät für Ingenieurwissenschaften updated"
    click_button "Update Faculty"
    expect(page).to have_content("Faculty was successfully updated.")
    expect(page).to have_content("Ingenieurwissenschaften updated")
    expect(page).to have_content("IngWi updated")
    expect(page).to have_content("Die Fakultät für Ingenieurwissenschaften updated")
    expect(page.current_path).to eq(moderator_faculties_path)
  end
end
