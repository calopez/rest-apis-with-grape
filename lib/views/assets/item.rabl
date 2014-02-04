object @file => :file

attributes :title, :user_id
node(:url) { |file| file.file.url }
