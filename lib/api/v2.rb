module API
  class AppV2 < Grape::API
    version "v2", using: :accept_version_header

    helpers do
      def current_user
        @@user
      end
    end

    http_basic do |handler, password|
      @@user = User.where(handler: handler).first
      @@user.authorized? password rescue false
    end

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

      post '/', rabl: "assets/item_v2" do
        @file = Asset.new params[:file]
        current_user.add_asset @file
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
