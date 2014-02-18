require "test_helper"
require "env"
require "api/v2public"
require "asset_uploader"
require "models/asset"

describe "Retrieve a single file" do
  include Rack::Test::Methods

  def app
    API::AppV2Public
  end

  let(:path) { "/files/1" }

  it "is successful" do
    get path
    last_response.status.must_equal 200
  end

  it "complains about a bad id" do
    get "/files/zip"
    last_response.status.must_equal 400
  end

end
