module API
  class App < Grape::API
    use Rack::Config do |env|
      env['api.tilt.root'] = File.join Dir.pwd, "lib/views"
    end

    format :json
    formatter :json, Grape::Formatter::Rabl
    default_format :json

    resource :files do
      get do
        Asset.all
      end

      post '/', rabl: "assets/item" do
        @file = Asset.new params[:file]
        @file.save
      end
    end
  end
end
