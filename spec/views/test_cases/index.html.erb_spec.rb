require 'rails_helper'

RSpec.describe "test_cases/index", type: :view do
  before(:each) do
    assign(:test_cases, [
      TestCase.create!(
        :problem => nil,
        :input => "",
        :output => ""
      ),
      TestCase.create!(
        :problem => nil,
        :input => "",
        :output => ""
      )
    ])
  end

  it "renders a list of test_cases" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
