require 'rails_helper'

RSpec.describe "Faculties", type: :request do
  
  # before do
  #   @faculty = Faculty.create(name: "The first Faculty", symbol: "FAK1" , description: "The first Description")
  #   # Login via Moderator
  #   @moderator = User.new(username: "moderator", email: "admin@fsi.de", password: "massick", roles: "moderator")
  #   @moderator.confirmed_at = Date.today
  #   @moderator.save
  #   visit "/"
  #   click_link "Login"
  #   fill_in "Email", with: @moderator.email
  #   fill_in "Password", with: @moderator.password
  #   click_button "Sign in"
  # end
  
  # describe 'GET /moderator/faculties/:id' do
  #   context 'with existing faculty' do
  #     before { get "/moderator/faculties/#{@faculty.id}" }
      
  #     it "handles existing faculty" do 
  #       expect(response.status).to eq 200
  #     end
  #   end
  #   context 'with non-existing faculty' do
  #     before { get "/moderator/faculties/xxxx" }
      
  #     it "handles non-existing faculty" do
  #       expect(response.status).to eq 302
  #       flash_message = "This faculty you are looking for could not be found"
  #       expect(flash[:alert]).to eq flash_message
  #     end
  #   end
  # end
end
