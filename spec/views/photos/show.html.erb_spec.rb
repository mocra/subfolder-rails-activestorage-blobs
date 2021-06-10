require "rails_helper"

RSpec.describe "photos/show", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      label: "Label"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
  end
end
