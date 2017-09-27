require "rails_helper"

RSpec.describe Moderator::CourseofstudiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moderator/courseofstudies").to route_to("moderator/courseofstudies#index")
    end

    it "routes to #new" do
      expect(:get => "/moderator/courseofstudies/new").to route_to("moderator/courseofstudies#new")
    end

    it "routes to #show" do
      expect(:get => "/moderator/courseofstudies/1").to route_to("moderator/courseofstudies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moderator/courseofstudies/1/edit").to route_to("moderator/courseofstudies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moderator/courseofstudies").to route_to("moderator/courseofstudies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/moderator/courseofstudies/1").to route_to("moderator/courseofstudies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/moderator/courseofstudies/1").to route_to("moderator/courseofstudies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moderator/courseofstudies/1").to route_to("moderator/courseofstudies#destroy", :id => "1")
    end

  end
end
