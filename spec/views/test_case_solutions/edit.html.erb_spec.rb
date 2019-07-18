require 'rails_helper'

RSpec.describe "test_case_solutions/edit", type: :view do
  before(:each) do
    @test_case_solution = assign(:test_case_solution, TestCaseSolution.create!(
      :solution => nil,
      :test_case => nil,
      :status => 1
    ))
  end

  it "renders the edit test_case_solution form" do
    render

    assert_select "form[action=?][method=?]", test_case_solution_path(@test_case_solution), "post" do

      assert_select "input[name=?]", "test_case_solution[solution_id]"

      assert_select "input[name=?]", "test_case_solution[test_case_id]"

      assert_select "input[name=?]", "test_case_solution[status]"
    end
  end
end
