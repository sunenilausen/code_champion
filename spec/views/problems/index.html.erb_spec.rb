require 'rails_helper'

RSpec.describe "problems/index", type: :view do
  before(:each) do
    assign(:problems, [
      Problem.create!(
        :title => "Title"
      ),
      Problem.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of problems" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
