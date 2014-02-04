require "test_helper"
require "env"
require "api"
require "models/user"
require "digest/sha1"
require "json"

def app
  API::App
end

describe "Signing up" do
  include Rack::Test::Methods

  before do
    post "v1/users", { user: {
      handler:  "josemotanet",
      email:    "jose@josemota.net",
      password: "tutsplusPW" }
    }
  end

  it "signs a user up" do
    last_response.status.must_equal 201
  end

  it "shows the user" do
    json = JSON.parse last_response.body
    struct = OpenStruct.new(json["user"])

    struct.handler.must_equal "josemotanet"
  end

end
