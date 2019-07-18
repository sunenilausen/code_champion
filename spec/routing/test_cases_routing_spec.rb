require "rails_helper"

RSpec.describe TestCasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/test_cases").to route_to("test_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/test_cases/new").to route_to("test_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/test_cases/1").to route_to("test_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_cases/1/edit").to route_to("test_cases#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/test_cases").to route_to("test_cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/test_cases/1").to route_to("test_cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/test_cases/1").to route_to("test_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_cases/1").to route_to("test_cases#destroy", :id => "1")
    end
  end
end
