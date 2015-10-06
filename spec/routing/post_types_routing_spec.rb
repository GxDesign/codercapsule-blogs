require "rails_helper"

RSpec.describe PostTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/post_types").to route_to("post_types#index")
    end

    it "routes to #new" do
      expect(:get => "/post_types/new").to route_to("post_types#new")
    end

    it "routes to #show" do
      expect(:get => "/post_types/1").to route_to("post_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/post_types/1/edit").to route_to("post_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/post_types").to route_to("post_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/post_types/1").to route_to("post_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/post_types/1").to route_to("post_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/post_types/1").to route_to("post_types#destroy", :id => "1")
    end

  end
end
