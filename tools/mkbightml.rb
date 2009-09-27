# mkbightml.rb
require "C:/ruby/lib/ruby/gems/1.8/gems/BlueCloth-1.0.0/lib/bluecloth"

big_mdown = IO.read('../README.md') + "\n\n"
head = IO.read('./head.erb')

Dir.glob("../mdowns/*.mdown").each{|file| big_mdown << "\n\n<br><br><hr color=green>\n\n" \
                                                    << IO.read(file) \
                                                    << "\n\n"}

b = BlueCloth.new big_mdown

template = "<html><head>"
template << head \
         << "</head><body><div id='content'>" \
         << b.to_html.gsub(/<code>/, '<code class="ruby">') \
         << "<div></body></html>"
    
open('../html/ShoesTutorialNote.html', 'w'){|f| f.puts template}

