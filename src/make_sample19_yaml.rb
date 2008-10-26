# make_sample19_yaml.rb
require 'yaml'

data =<<-EOS
Satoshi Asakawa, Japan
Tom Jonson, Italy
EOS

Gang = Struct.new :name, :country

gangs = []
data.each{|d| gangs << Gang.new( *(d.chomp.split(',')) )}

open('gangs.yml', 'w'){|f| f.puts YAML.dump(gangs)}
