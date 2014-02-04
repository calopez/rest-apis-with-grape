object @file => :file

attributes :title
node(:url) { |file| file.file.url }
