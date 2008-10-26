# mkhtml.rb
require 'BlueCloth'

b = BlueCloth.new IO.read('../README.mdown')
b.gsub!('(http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/', '(../html/')
b.gsub!('.mdown)', '.html)')
open('../html/index.html', 'w'){|f| f.puts b.to_html}

Dir.glob("../mdowns/*.mdown").each do |mfile|
  lines = IO.readlines mfile
  hfile = '../html/' + mfile.split('/').last.sub('.mdown', '.html')
  open(hfile, 'w') do |f|
    lines.each do |line|
      line.gsub!('.mdown', '.html')
      if line[0, 2] == '!['
        fname = /^\!\[(.*)\]/.match(line).to_a[1]
        line = "![#{fname}](../images/#{fname})"
      end
      f.puts line
    end
  end
  b = BlueCloth.new IO.read(hfile)
  open(hfile, 'w'){|f| f.puts b.to_html}
end
  