require "rails_helper"

RSpec.describe Moderator::LecturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/lectures").to route_to("moderator/lectures#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/lectures/new").to route_to("moderator/lectures#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/lectures/1").to route_to("moderator/lectures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/lectures/1/edit").to route_to("moderator/lectures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/lectures").to route_to("moderator/lectures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/lectures/1").to route_to("moderator/lectures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/lectures/1").to route_to("moderator/lectures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/lectures/1").to route_to("moderator/lectures#destroy", :id => "1")
    end

  end
end
