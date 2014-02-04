module API
  class App < Grape::API
    version "v1", using: :path

    use Rack::Config do |env|
      env['api.tilt.root'] = File.join Dir.pwd, "lib/views"
    end

    format :json
    formatter :json, Grape::Formatter::Rabl
    default_format :json

    resource :files do
      get '/', rabl: "assets/collection" do
        @files = Asset.all
      end

      post '/', rabl: "assets/item" do
        @file = Asset.new params[:file]
        @file.save
      end
    end

    resource :users do
      post "/", rabl: "users/item" do
        password = params[:user].delete :password
        @user = User.new params[:user]
        @user.password = password
        @user.save
      end
    end
  end
end
