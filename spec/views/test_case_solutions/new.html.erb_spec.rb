require 'rails_helper'

RSpec.describe "test_case_solutions/new", type: :view do
  before(:each) do
    assign(:test_case_solution, TestCaseSolution.new(
      :solution => nil,
      :test_case => nil,
      :status => 1
    ))
  end

  it "renders new test_case_solution form" do
    render

    assert_select "form[action=?][method=?]", test_case_solutions_path, "post" do

      assert_select "input[name=?]", "test_case_solution[solution_id]"

      assert_select "input[name=?]", "test_case_solution[test_case_id]"

      assert_select "input[name=?]", "test_case_solution[status]"
    end
  end
end
