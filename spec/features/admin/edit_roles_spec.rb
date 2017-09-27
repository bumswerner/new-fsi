require "rails_helper"

RSpec.feature "Check roles section - " do
  
  before do 
    # User
    @user = User.new(username: "user", email: "user@fsi.de", password: "massick", roles: "user")
    @user.confirmed_at = Date.today
    @user.save
    
    # Moderator
    @moderator = User.new(username: "moderator", email: "moderator@fsi.de", password: "massick", roles: "moderator")
    @moderator.confirmed_at = Date.today
    @moderator.save
    
    # Admin
    @admin = User.new(username: "admin", email: "admin@fsi.de", password: "massick", roles: "admin")
    @admin.confirmed_at = Date.today
    @admin.save
    visit "/"
    click_link "Login"
    fill_in "Email", with: @admin.email
    fill_in "Password", with: @admin.password
    click_button "Sign in"
  end
  
  scenario "Visit Admin User Section" do
    visit "/"
    click_link "User"
    expect(page.current_path).to eq(admin_users_path)
    expect(User.all.count).to eq(3)
    expect(page).to have_link("Edit")
    expect(page).to have_link("Delete")
  end
  
  scenario "Change User to Moderator" do
    visit "/admin/users/#{@user.id}/edit"
   # find(:select, 'user_roles').first(:option, 'moderator').click
    find('select#user_roles').find("option[value='user']").select_option
    click_button('Update User')
    expect(page).to have_content("User was successfully updated.")
    expect(page.current_path).to eq(admin_users_path)
  end
  
end

RSpec.feature "Check delete user - " do
  before do
    # Admin
    @admin = User.new(username: "admin", email: "admin@fsi.de", password: "massick", roles: "admin")
    @admin.confirmed_at = Date.today
    @admin.save
    visit "/"
    click_link "Login"
    fill_in "Email", with: @admin.email
    fill_in "Password", with: @admin.password
    click_button "Sign in"
  end
  
  scenario "Remove Moderator and User" do
    visit "/admin/users/#{@admin.id}"
    click_link("Delete")
  end
  
end