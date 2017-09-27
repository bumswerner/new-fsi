require "rails_helper"

RSpec.describe Moderator::CategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/categories").to route_to("moderator/categories#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/categories/new").to route_to("moderator/categories#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/categories/1").to route_to("moderator/categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/categories/1/edit").to route_to("moderator/categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "moderator//categories").to route_to("moderator/categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "moderator//categories/1").to route_to("moderator/categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/categories/1").to route_to("moderator/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/categories/1").to route_to("moderator/categories#destroy", :id => "1")
    end

  end
end
