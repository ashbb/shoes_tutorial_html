# sample19.rb
require 'yaml'

Shoes.app :width => 200, :height => 100 do
  Gang = Struct.new :name, :country
  gangs = YAML.load_file(Dir.pwd + '/gangs.yml')
  gangs.each{|g| para g.name, g.country, "\n"}
end