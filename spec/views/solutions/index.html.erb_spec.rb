require 'rails_helper'

RSpec.describe "solutions/index", type: :view do
  before(:each) do
    assign(:solutions, [
      create(:solution),
      create(:solution)
    ])
  end

  it "renders a list of solutions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
