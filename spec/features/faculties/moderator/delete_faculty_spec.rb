require 'rails_helper'

RSpec.feature "Deleting a Faculty - " do

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