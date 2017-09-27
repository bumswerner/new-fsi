require 'rails_helper'

# RSpec.describe "Assoziations", type: :request do
#   describe "GET /assoziations" do
#     it "works! (now write some real specs)" do
#       get assoziations_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end

# RSpec.describe "Assoziations", type: :request do
  
#   before do
#       @faculty = Assoziation.create(code: "The first Faculty", symbol: "FAK1" , description: "The first Description")
#   end
  
#   describe 'GET /moderator/faculties/:id' do
#     context 'with existing faculty' do
#       before { get "/moderator/faculties/#{@faculty.id}" }
      
#       it "handles existing faculty" do 
#         expect(response.status).to eq 200
#       end
#     end
#     context 'with non-existing faculty' do
#       before { get "/moderator/faculties/xxxx" }
      
#       it "handles non-existing faculty" do
#         expect(response.status).to eq 302
#         flash_message = "This faculty you are looking for could not be found"
#         expect(flash[:alert]).to eq flash_message
#       end
#     end
#   end
# end
