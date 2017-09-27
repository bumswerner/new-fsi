require "rails_helper"

RSpec.describe Moderator::ConnectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/connections").to route_to("moderator/connections#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/connections/new").to route_to("moderator/connections#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/connections/1").to route_to("moderator/connections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/connections/1/edit").to route_to("moderator/connections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/connections").to route_to("moderator/connections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/connections/1").to route_to("moderator/connections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/connections/1").to route_to("moderator/connections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/connections/1").to route_to("moderator/connections#destroy", :id => "1")
    end

  end
end
