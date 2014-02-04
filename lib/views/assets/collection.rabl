collection @files => :file

attributes :title
node(:url) { |file| file.file_url }
