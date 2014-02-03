module API
  class App < Grape::API
    resource :files do
      post do
        file = Asset.new params[:file]
        file.save

        file.to_json
      end
    end
  end
end
