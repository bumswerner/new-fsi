require "rails_helper"

RSpec.feature "Users signup" do 
   before do 
    # Login via Moderator
    @user = User.new
    @user.confirmed_at = Date.today
    @user.save
  end
  scenario "with valid credentials" do
    visit "/"
    click_link "Register"
    fill_in "Username", with: "example"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password" 
    #click_button "Sign up"
    #expect(page).to have_content("A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.") 
  end

  scenario "with invalid credentials" do 
    visit "/"
    click_link "Register"
    fill_in "Email", with: ""
    fill_in "Password", with: ""
    fill_in "Password confirmation", with: "" 
    click_button "Sign up"
    expect(page).to have_content("3 errors prohibited this user from being saved:") 
  end
end