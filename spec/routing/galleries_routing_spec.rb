require "rails_helper"

RSpec.describe Moderator::GalleriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/galleries").to route_to("moderator/galleries#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/galleries/new").to route_to("moderator/galleries#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/galleries/1").to route_to("moderator/galleries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/galleries/1/edit").to route_to("moderator/galleries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/galleries").to route_to("moderator/galleries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/galleries/1").to route_to("moderator/galleries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/galleries/1").to route_to("moderator/galleries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/galleries/1").to route_to("moderator/galleries#destroy", :id => "1")
    end

  end
end
