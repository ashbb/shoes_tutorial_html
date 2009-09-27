# mkhtml.rb
require "C:/ruby/lib/ruby/gems/1.8/gems/BlueCloth-1.0.0/lib/bluecloth"
 
#load style
 
head = IO.read('./head.erb')
 
#build intro page
 
b = BlueCloth.new IO.read('../README.md')
b.gsub!('(http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/', '(../html/')
b.gsub!('.mdown)', '.html)')
 
#introduce very simple template
template = "<html><head>#{head}</head><body><div id='content'>#{b.to_html}<div></body></html>"
open('../html/inner_index.html', 'w'){|f| f.puts template}
 
#build index links
b = BlueCloth.new IO.read('../inner_links.mdown')
b.gsub!('(http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/', '(../html/')
b.gsub!('.mdown)', '.html)')
 
#introduce very simple template
template = "<html><head>#{head}</head><body><div id='nav'>#{b.to_html}</div></body></html>"
open('../html/inner_links.html', 'w'){|f| f.puts template}
 
# process directory of marked down files
 
Dir.glob("../mdowns/*.mdown").each do |mfile|
  lines = IO.readlines mfile
  hfile = '../html/' + mfile.split('/').last.sub('.mdown', '.html')
  open(hfile, 'w') do |f|
    lines.each do |line|
      line.gsub!('.mdown', '.html') unless line[0].chr == "\t"
      if line[0, 2] == '!['
        fname = /^\!\[(.*)\]/.match(line).to_a[1]
        line = "![#{fname}](../images/#{fname})"
      end
      f.puts line
    end
  end
  b = BlueCloth.new IO.read(hfile)
  b.gsub!('(http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/', '(../html/')
  b.gsub!('.mdown)', '.html)')
  template = "<html><head>#{head}</head><body><div id='content'>#{b.to_html.gsub(/<code>/, '<code class="ruby">')}<div></body></html>"
  open(hfile, 'w'){|f| f.puts template}
end
