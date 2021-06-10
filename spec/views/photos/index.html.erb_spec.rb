require "rails_helper"

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        label: "Label"
      ),
      Photo.create!(
        label: "Label"
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", text: "Label".to_s, count: 2
  end
end
