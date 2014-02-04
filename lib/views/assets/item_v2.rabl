object @file

attributes :title

node(:url) { |file| file.file.url }

child(:user) do |file|
  attributes :handler
end
