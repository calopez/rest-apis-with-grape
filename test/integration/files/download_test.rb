require "test_helper"
require "env"
require "api/v1"
require "asset_uploader"
require "models/asset"

describe "Upload a file" do
  include Rack::Test::Methods

  def app
    API::AppV1
  end

  before do
    # Given i have a file I want to upload
    file_path = fixture_path "zip.zip"

    # When i upload it
    post "v1/files", file: {
      title: "My First Zip file",
      file: Rack::Test::UploadedFile.new(file_path, "application/zip", true)
    }

    @id = JSON.parse(last_response.body)["file"]["id"]
  end

  # Then i should be able to download it
  it "is successful" do
    skip
    path = "/v1/files/#@id/download"
    get path

    last_response.status.must_equal 302
  end

  it "downloads the file" do
    skip
    path = "/v1/files/#@id/download"
    get path
    follow_redirect!

    last_response.content_type.must_equal "application/zip"
  end

end
