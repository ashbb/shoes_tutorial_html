# sample78-1.rb
require 'xmlrpc/client'

Shoes.app do
  @client = XMLRPC::Client.new2("http://localhost:8080/")
  
  resource_path = ARGV[1]
  assertion = ARGV[2].to_s.empty? ? "look right" : ARGV[2].to_s

  keypress do |key|
    case key
    when "\n"
      pass
    when "\e"
      fail
    end
  end

  stack :margin => 10 do
    para "Does this image ", assertion, "?"
    flow do
      para link("Yes"){ pass }
      para link("No"){ fail }
    end
    image resource_path
    para code(resource_path)
  end
  
  def pass
    @client.call('shoes_log', 'Yes, I like it!', 1)
  end
  
  def fail
    @client.call('shoes_log', 'No,....', 0)
  end
end
