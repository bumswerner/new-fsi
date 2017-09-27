require 'rails_helper'

RSpec.feature "Show a faculty - " do
  
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
  
  scenario "A user click of show button" do
    faculty = FactoryGirl.create(:faculty)
    visit "/moderator/faculties/"
    click_link "Show" 
    expect(page).to have_content("Ingenieurwissenschaften")
    expect(page).to have_content("IngWi")
    expect(page).to have_content("Die Ausbildung von Ingenieuren an der htw saar")
  end
end