require 'rails_helper'

RSpec.describe "test_case_solutions/show", type: :view do
  before(:each) do
    @test_case_solution = assign(:test_case_solution, TestCaseSolution.create!(
      :solution => nil,
      :test_case => nil,
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
