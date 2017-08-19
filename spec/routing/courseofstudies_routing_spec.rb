require "rails_helper"

RSpec.describe CourseofstudiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/courseofstudies").to route_to("courseofstudies#index")
    end

    it "routes to #new" do
      expect(:get => "/courseofstudies/new").to route_to("courseofstudies#new")
    end

    it "routes to #show" do
      expect(:get => "/courseofstudies/1").to route_to("courseofstudies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/courseofstudies/1/edit").to route_to("courseofstudies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/courseofstudies").to route_to("courseofstudies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/courseofstudies/1").to route_to("courseofstudies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/courseofstudies/1").to route_to("courseofstudies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/courseofstudies/1").to route_to("courseofstudies#destroy", :id => "1")
    end

  end
end
