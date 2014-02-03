require "bundler"
Bundler.require
Bundler.require :production

require "lib/env"
require "lib/asset_uploader"
require "lib/models/asset"
require "lib/api"
