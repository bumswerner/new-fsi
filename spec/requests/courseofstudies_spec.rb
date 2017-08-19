require 'rails_helper'

RSpec.describe "Courseofstudies", type: :request do
  describe "GET /courseofstudies" do
    it "works! (now write some real specs)" do
      get courseofstudies_path
      expect(response).to have_http_status(200)
    end
  end
end
