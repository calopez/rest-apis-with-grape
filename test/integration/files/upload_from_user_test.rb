require "test_helper"
require "env"
require "api/v2"
require "asset_uploader"
require "models/asset"
require "models/user"

describe "Upload a file" do
  include Rack::Test::Methods

  def app
    API::App
  end

  describe "unauthorized" do
  end

  describe "when authorized" do
    before do
      # Given i have a file I want to upload
      file_path = fixture_path "zip.zip"

      # When i upload it
      authorize "josemotanet", "tutsplusPW"
      post "files", file: {
        title: "My First Zip file",
        file: Rack::Test::UploadedFile.new(file_path, "application/zip", true)
      }, "Accept-Version" => "v2"
    end

    # Then i should have a title and url in JSON

    it "is successful" do
      last_response.status.must_equal 201
    end

    it "shows the user that holds the file" do
      last_response.body.must_include "josemotanet"
    end

  end
end
