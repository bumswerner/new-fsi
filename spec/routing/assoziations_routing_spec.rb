require "rails_helper"

RSpec.describe AssoziationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/assoziations").to route_to("assoziations#index")
    end

    it "routes to #new" do
      expect(:get => "/assoziations/new").to route_to("assoziations#new")
    end

    it "routes to #show" do
      expect(:get => "/assoziations/1").to route_to("assoziations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/assoziations/1/edit").to route_to("assoziations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/assoziations").to route_to("assoziations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/assoziations/1").to route_to("assoziations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/assoziations/1").to route_to("assoziations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/assoziations/1").to route_to("assoziations#destroy", :id => "1")
    end

  end
end
