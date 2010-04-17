# sample78.rb
require "xmlrpc/server"
s = XMLRPC::Server.new(8080)

s.add_handler("shoes_log") do |*logs|
 puts logs
 "success: #{logs}"
end

s.set_default_handler do |name, *args|
  raise XMLRPC::FaultException.new(-99, 
    "Method #{name} missing or wrong number of parameters!")
end
  
s.serve
