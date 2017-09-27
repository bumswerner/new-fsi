require "rails_helper"

RSpec.describe Moderator::SectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/sections").to route_to("moderator/sections#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/sections/new").to route_to("moderator/sections#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/sections/1").to route_to("moderator/sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/sections/1/edit").to route_to("moderator/sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/sections").to route_to("moderator/sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/sections/1").to route_to("moderator/sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/sections/1").to route_to("moderator/sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/sections/1").to route_to("moderator/sections#destroy", :id => "1")
    end

  end
end
