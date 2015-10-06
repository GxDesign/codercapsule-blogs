require "rails_helper"

RSpec.describe TeacherClassesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/teacher_classes").to route_to("teacher_classes#index")
    end

    it "routes to #new" do
      expect(:get => "/teacher_classes/new").to route_to("teacher_classes#new")
    end

    it "routes to #show" do
      expect(:get => "/teacher_classes/1").to route_to("teacher_classes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/teacher_classes/1/edit").to route_to("teacher_classes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/teacher_classes").to route_to("teacher_classes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/teacher_classes/1").to route_to("teacher_classes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/teacher_classes/1").to route_to("teacher_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/teacher_classes/1").to route_to("teacher_classes#destroy", :id => "1")
    end

  end
end
