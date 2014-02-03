module API
  class App < Grape::API
    resource :files do
      get do
        Asset.all
      end

      post do
        file = Asset.new params[:file]
        file.save

        file.to_json
      end
    end
  end
end
