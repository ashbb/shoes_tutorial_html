# make_sample19_yaml_for_ruby1.9.rb
require 'yaml'

data =<<-EOS
Satoshi Asakawa, Japan
Tom Jonson, Italy
EOS

Gang = Struct.new :name, :country

gangs = []
data.each_line{|d| gangs << Gang.new( *(d.chomp.split(',')) )}

open('gangs-19.yml', 'w'){|f| f.puts YAML.dump(gangs)}
