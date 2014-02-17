require "test_helper"
require "env"
require "api/v2public"
require "asset_uploader"
require "models/asset"

describe "Download a file" do
  include Rack::Test::Methods

  def app
    API::AppV2Public
  end

  let(:path) { "/files/1/download" }

  # Then i should be able to download it
  it "is successful" do
    post path
    last_response.status.must_equal 302
  end

  it "downloads the file" do
    skip
    post path
    follow_redirect!

    last_response.content_type.must_equal "application/zip"
  end

  it "forbids wrong receivers" do
    post path, receiver: "net@tutsplus.com"
    last_response.status.must_equal 403
  end

end
