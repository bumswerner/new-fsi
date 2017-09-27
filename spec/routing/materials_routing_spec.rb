require "rails_helper"

RSpec.describe Moderator::MaterialsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/materials").to route_to("moderator/materials#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/materials/new").to route_to("moderator/materials#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/materials/1").to route_to("moderator/materials#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/materials/1/edit").to route_to("moderator/materials#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/materials").to route_to("moderator/materials#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "moderator//materials/1").to route_to("moderator/materials#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/materials/1").to route_to("moderator/materials#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/materials/1").to route_to("moderator/materials#destroy", :id => "1")
    end

  end
end
