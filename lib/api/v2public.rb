module API
  class AppV2Public < Grape::API

    use Rack::Static,
      urls: ["/uploads"],
      root: "public"

    resource :files do
      post "/:id/download" do
        asset = Asset[params[:id]]
        if asset.can_be_downloaded_by? params[:receiver]
          redirect asset.file_url.gsub "/public",""
        else
          error! "Wrong Receiver", 403
        end
      end
    end
  end
end
