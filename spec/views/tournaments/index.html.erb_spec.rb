require 'rails_helper'

RSpec.describe "tournaments/index", type: :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Tournament.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
