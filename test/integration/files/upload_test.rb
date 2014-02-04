require "test_helper"
require "env"
require "api/v1"
require "asset_uploader"
require "models/asset"

describe "Upload a file" do
  include Rack::Test::Methods

  def app
    API::App
  end

  before do
    # Given i have a file I want to upload
    file_path = fixture_path "zip.zip"

    # When i upload it
    post "v1/files", file: {
      title: "My First Zip file",
      file: Rack::Test::UploadedFile.new(file_path, "application/zip", true)
    }
  end

  # Then i should have a title and url in JSON

  it "is successful" do
    last_response.status.must_equal 201
  end

  it "is JSON" do
    last_response.content_type.must_equal "application/json"
  end

  it "shows the title" do
    last_response.body.must_include "My First Zip file"
  end

  it "shows the filename" do
    last_response.body.must_include "zip.zip"
  end

  it "lists all files" do
    get "files"

    last_response.status.must_equal 200
    last_response.body.must_include "My First Zip file"
  end
end
