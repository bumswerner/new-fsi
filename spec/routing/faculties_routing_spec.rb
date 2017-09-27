require "rails_helper"

RSpec.describe Moderator::FacultiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/faculties").to route_to("moderator/faculties#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/faculties/new").to route_to("moderator/faculties#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/faculties/1").to route_to("moderator/faculties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/faculties/1/edit").to route_to("moderator/faculties#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/faculties").to route_to("moderator/faculties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/faculties/1").to route_to("moderator/faculties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/faculties/1").to route_to("moderator/faculties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/faculties/1").to route_to("moderator/faculties#destroy", :id => "1")
    end

  end
end
