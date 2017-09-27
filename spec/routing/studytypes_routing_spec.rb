require "rails_helper"

RSpec.describe Moderator::StudytypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/studytypes").to route_to("moderator/studytypes#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/studytypes/new").to route_to("moderator/studytypes#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/studytypes/1").to route_to("moderator/studytypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/studytypes/1/edit").to route_to("moderator/studytypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/studytypes").to route_to("moderator/studytypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/studytypes/1").to route_to("moderator/studytypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/studytypes/1").to route_to("moderator/studytypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/studytypes/1").to route_to("moderator/studytypes#destroy", :id => "1")
    end

  end
end
