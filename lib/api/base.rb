module API
  class App < Grape::API
    mount API::AppV1
    mount API::AppV2
  end
end
