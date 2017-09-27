require "rails_helper"

RSpec.describe Moderator::AssoziationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/assoziations").to route_to("moderator/assoziations#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/assoziations/new").to route_to("moderator/assoziations#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/assoziations/1").to route_to("moderator/assoziations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/assoziations/1/edit").to route_to("moderator/assoziations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/assoziations").to route_to("moderator/assoziations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/assoziations/1").to route_to("moderator/assoziations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/assoziations/1").to route_to("moderator/assoziations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/assoziations/1").to route_to("moderator/assoziations#destroy", :id => "1")
    end

  end
end
