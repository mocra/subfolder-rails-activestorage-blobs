require "rails_helper"

RSpec.describe ActiveStorage::Blob do
  let(:blob) { ActiveStorage::Blob.new }
  let(:key) { blob.key }

  it "keys have no special prefix by default" do
    expect(ENV).to receive(:[]).with("HEROKU_APP_NAME").and_return(nil)
    # default key looks like "nk2gxeujmuoldqr6o8ng6gov9g5c"
    expect(key).to match(%r{\w{28}})
  end

  it "keys have no special prefix by default" do
    expect(ENV).to receive(:[]).with("HEROKU_APP_NAME").and_return("rcrdcp-pr-123").twice
    # expect like "rcrdcp-pr-123/nk2gxeujmuoldqr6o8ng6gov9g5c"
    expect(key).to match(%r{rcrdcp-pr-123/\w{28}})
  end
end
