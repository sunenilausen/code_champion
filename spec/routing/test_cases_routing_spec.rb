require "rails_helper"

RSpec.describe TestCasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "problems/1/test_cases").to route_to("test_cases#index", problem_id: "1")
    end

    it "routes to #new" do
      expect(:get => "problems/1/test_cases/new").to route_to("test_cases#new", problem_id: "1")
    end

    it "routes to #show" do
      expect(:get => "problems/1/test_cases/1").to route_to("test_cases#show", problem_id: "1", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "problems/1/test_cases/1/edit").to route_to("test_cases#edit", problem_id: "1", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "problems/1/test_cases").to route_to("test_cases#create", problem_id: "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "problems/1/test_cases/1").to route_to("test_cases#update", problem_id: "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "problems/1/test_cases/1").to route_to("test_cases#update", problem_id: "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "problems/1/test_cases/1").to route_to("test_cases#destroy", problem_id: "1", :id => "1")
    end
  end
end
