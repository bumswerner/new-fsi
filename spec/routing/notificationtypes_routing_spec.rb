require "rails_helper"

RSpec.describe NotificationtypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/notificationtypes").to route_to("notificationtypes#index")
    end

    it "routes to #new" do
      expect(:get => "/notificationtypes/new").to route_to("notificationtypes#new")
    end

    it "routes to #show" do
      expect(:get => "/notificationtypes/1").to route_to("notificationtypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/notificationtypes/1/edit").to route_to("notificationtypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/notificationtypes").to route_to("notificationtypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/notificationtypes/1").to route_to("notificationtypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/notificationtypes/1").to route_to("notificationtypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/notificationtypes/1").to route_to("notificationtypes#destroy", :id => "1")
    end

  end
end
