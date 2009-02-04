# gallery4-1.rb
require 'mechanize'
 
agent = WWW::Mechanize.new
page = ARGV[0]

page_content = agent.get(page)
image_regex = /<img src="(.*)" title="(.*)" alt="(.*)"/

image_regex.match page_content.search("//img[contains(@src,'comics')]").to_s
open('xkcd_tmp.viewer', 'w'){|f| f.puts $1, $2, $3}
