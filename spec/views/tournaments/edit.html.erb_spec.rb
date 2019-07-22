require 'rails_helper'

RSpec.describe "tournaments/edit", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do

      assert_select "input[name=?]", "tournament[title]"

      assert_select "textarea[name=?]", "tournament[description]"
    end
  end
end
