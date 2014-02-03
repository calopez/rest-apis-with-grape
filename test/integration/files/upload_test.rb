require "test_helper"
require "env"
require "api"
require "asset_uploader"
require "models/asset"

describe "Upload a file" do
  include Rack::Test::Methods

  def app
    API::App
  end

  it "uploads a file" do
    # Given i have a file I want to upload
    file_path = fixture_path "zip.zip"

    # When i upload it
    post "files", file: {
      title: "My First Zip file",
      file: Rack::Test::UploadedFile.new(file_path, "application/zip", true)
    }

    # Then i should have a url and its timestamp in JSON
    last_response.status.must_equal 201
    last_response.body.must_include "My First Zip file"
  end
end
