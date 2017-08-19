require "rails_helper"

RSpec.describe StudytypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/studytypes").to route_to("studytypes#index")
    end

    it "routes to #new" do
      expect(:get => "/studytypes/new").to route_to("studytypes#new")
    end

    it "routes to #show" do
      expect(:get => "/studytypes/1").to route_to("studytypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/studytypes/1/edit").to route_to("studytypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/studytypes").to route_to("studytypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/studytypes/1").to route_to("studytypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/studytypes/1").to route_to("studytypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/studytypes/1").to route_to("studytypes#destroy", :id => "1")
    end

  end
end
