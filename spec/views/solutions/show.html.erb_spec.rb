require 'rails_helper'

RSpec.describe "solutions/show", type: :view do
  before(:each) do
    @solution = create :solution
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
