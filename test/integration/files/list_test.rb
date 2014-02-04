require "test_helper"
require "env"

describe "Listing files" do

  def app
    API::App
  end

  include Rack::Test::Methods

  it "lists all files" do
    get "v1/files"

    last_response.status.must_equal 200
    last_response.body.must_include "My First Zip file"
  end

end
