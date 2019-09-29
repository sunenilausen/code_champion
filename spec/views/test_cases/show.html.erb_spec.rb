require 'rails_helper'

RSpec.describe "test_cases/show", type: :view do
  before(:each) do
    @test_case = create :test_case
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
