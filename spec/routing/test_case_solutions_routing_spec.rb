require "rails_helper"

RSpec.describe TestCaseSolutionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/test_case_solutions").to route_to("test_case_solutions#index")
    end

    it "routes to #new" do
      expect(:get => "/test_case_solutions/new").to route_to("test_case_solutions#new")
    end

    it "routes to #show" do
      expect(:get => "/test_case_solutions/1").to route_to("test_case_solutions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_case_solutions/1/edit").to route_to("test_case_solutions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/test_case_solutions").to route_to("test_case_solutions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/test_case_solutions/1").to route_to("test_case_solutions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/test_case_solutions/1").to route_to("test_case_solutions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_case_solutions/1").to route_to("test_case_solutions#destroy", :id => "1")
    end
  end
end
