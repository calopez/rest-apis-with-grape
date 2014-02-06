object @file => :file

attributes :id, :title, :user_id
node(:url) { |file| file.file.url }
