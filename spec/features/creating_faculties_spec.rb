require "rails_helper"

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

# click on new image



RSpec.feature "Creating Faculty - " do
  scenario "A user creates a new faculty" do
     
  #  sign_in_with 'miketheman@t-online.de', 'massick'
  #  user = build(:user, name: "John")
    visit "/faculties"
    click_link "New Faculty" 
    
    fill_in "Name", :with => "Ingenieurwissenschaften"
    fill_in "Symbol", with: "IngWi"
    fill_in "Description", with: "Die Fakultät für Ingenieurwissenschaften"
    
    click_button "Create Faculty"
    
    expect(page).to have_content("Faculty was successfully created.")
    expect(page.current_path).to eq(faculty_path(2))
  end
  
  scenario "A user fails to create a new faculty" do
    visit "/faculties"
    click_link "New Faculty" 
    
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


#RSpec.describe Faculty, type :model do
 # before do
 #   @faculty = FactoryGirl.create(:faculty)
#  end

RSpec.feature "Updating Faculty - " do
  scenario "A user update a faculty" do
#   visit "/faculties/2/edit"
  
    faculty = FactoryGirl.create(:faculty)
   puts faculty.name
  #  faculty.name 

#  click_link "Edit" 
#    fill_in "Name", with: "Ingenieurwissenschaften updated"
   # fill_in "Symbol", with: "IngWi updated"
  #  fill_in "Description", with: "Die Fakultät für Ingenieurwissenschaften updated"
    
  #  click_button "Update Faculty"
    
  #  expect(page).to have_content("Faculty was successfully created.")
  #  expect(page.current_path).to eq(faculty_path(1))
  end
end

# Run only this test