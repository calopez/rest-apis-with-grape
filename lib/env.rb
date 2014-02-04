DB = Sequel.connect "sqlite://db/db.sqlite3"

CarrierWave.configure do |config|
  config.root = File.expand_path "../../", __FILE__
  config.cache_dir = File.expand_path "../../public", __FILE__
end

Rabl.register!
