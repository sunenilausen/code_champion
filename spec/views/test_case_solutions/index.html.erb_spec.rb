require 'rails_helper'

RSpec.describe "test_case_solutions/index", type: :view do
  before(:each) do
    assign(:test_case_solutions, [
      TestCaseSolution.create!(
        :solution => nil,
        :test_case => nil,
        :status => 2
      ),
      TestCaseSolution.create!(
        :solution => nil,
        :test_case => nil,
        :status => 2
      )
    ])
  end

  it "renders a list of test_case_solutions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
