require 'rails_helper'

RSpec.describe "tournaments/show", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
