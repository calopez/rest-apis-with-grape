require "bundler"
Bundler.require
Bundler.require :production

require "lib/env"
require "lib/asset_uploader"
require "lib/models/asset"
require "lib/api/v1"
require "lib/api/v2"
require "lib/api/base"
require "digest/sha1"
