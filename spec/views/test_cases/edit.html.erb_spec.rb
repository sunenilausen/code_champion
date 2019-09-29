require 'rails_helper'

RSpec.describe "test_cases/edit", type: :view do
  before(:each) do
    @test_case = create :test_case
  end

  it "renders the edit test_case form" do
    render

    assert_select "form[action=?][method=?]", test_case_path([test_case.problem, @test_case]), "post" do

      assert_select "input[name=?]", "test_case[problem_id]"

      assert_select "input[name=?]", "test_case[input]"

      assert_select "input[name=?]", "test_case[output]"
    end
  end
end
