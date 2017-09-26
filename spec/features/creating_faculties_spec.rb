require "rails_helper"


# example

# feature 'Creating book' do  
#   scenario 'can create a book' do
#     # 1. go to root where will be button to Add New Book:
#     visit '/'
#     # 2. click on Add New Book button
#     click_link 'Add New Book'
#     # 3. Fill form - add title
#     fill_in 'book_title', with: 'Ulisses' 
#     # 4. Click on submit form button
#     click_button 'Save Book'
#     # 5. Then we should be redirected to show page with book details (book title)
#     expect(page).to have_content('Ulisses')
#   end
# end

# 1. Go to expect path (there will be button to add new faculty
# 2. Click on "Add new faculty"
# 3. Fill out the form 
# 4. Submit from
# 5. See 'show' page of created faculty




RSpec.feature "Show all faculties - " do
  
  before do
    @faculty1 = Faculty.create(name: "The first Faculty", symbol: "FAK1" , description: "The first Description")
    @faculty2 = Faculty.create(name: "The second Faculty", symbol: "FAK2" , description: "The seconf Description")
    
   # @user = User.create(email: "test1@fsi.de",username: "frank", roles: "admin") 
   # @admin = User.first
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


RSpec.feature "Creating Faculty - " do
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

RSpec.feature "Deleting Faculty" do
  scenario "A user delete a faculty" do
    faculty = FactoryGirl.create(:faculty)
    
    visit "/moderator/faculties"
    click_link "Delete"
    expect(page).to have_content("Faculty was successfully destroyed.")
    #expect(true).to eq (faculty.nil?)
    expect(page.current_path).to eq(moderator_faculties_path)
    
  end
end