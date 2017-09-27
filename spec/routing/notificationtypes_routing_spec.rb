require "rails_helper"

RSpec.describe Moderator::NotificationtypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "moderator/notificationtypes").to route_to("moderator/notificationtypes#index")
    end

    it "routes to #new" do
      expect(:get => "moderator/notificationtypes/new").to route_to("moderator/notificationtypes#new")
    end

    it "routes to #show" do
      expect(:get => "moderator/notificationtypes/1").to route_to("moderator/notificationtypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/notificationtypes/1/edit").to route_to("moderator/notificationtypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/notificationtypes").to route_to("moderator/notificationtypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator//notificationtypes/1").to route_to("moderator/notificationtypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator//notificationtypes/1").to route_to("moderator/notificationtypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator//notificationtypes/1").to route_to("moderator/notificationtypes#destroy", :id => "1")
    end

  end
end
