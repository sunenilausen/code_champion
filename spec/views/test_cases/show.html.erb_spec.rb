require 'rails_helper'

RSpec.describe "test_cases/show", type: :view do
  before(:each) do
    @test_case = assign(:test_case, TestCase.create!(
      :problem => nil,
      :input => "",
      :output => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
