$:.unshift File.expand_path "..", __FILE__

require "app"

use Rack::Static,
  urls: ["/uploads"],
  root: "public"

run API::App
