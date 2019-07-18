require 'rails_helper'

RSpec.describe "problems/show", type: :view do
  before(:each) do
    @problem = assign(:problem, Problem.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
