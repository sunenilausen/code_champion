require 'rails_helper'

RSpec.describe "test_cases/new", type: :view do
  before(:each) do
    assign(:test_case, TestCase.new(
      :problem => nil,
      :input => "",
      :output => ""
    ))
  end

  it "renders new test_case form" do
    render

    assert_select "form[action=?][method=?]", test_cases_path, "post" do

      assert_select "input[name=?]", "test_case[problem_id]"

      assert_select "input[name=?]", "test_case[input]"

      assert_select "input[name=?]", "test_case[output]"
    end
  end
end
