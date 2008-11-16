# mkmdown.rb

# Create ../README.mdown and reference ../mdowns/***.mdown files, if they do not exist.
PATH = 'http://github.com/ashbb/shoes_tutorial_html/tree/master/mdowns/'

def mk_link i, num, name
  fname = num + '_' + name.gsub(/[\&\#\!\(\)\\\/\:\*\?\"\<\>\| ]/, '_') + '.mdown'
  open('../mdowns/' + fname, 'w'){|f| f.puts name, '-' * name.length} unless File.exist?('../mdowns/' + fname)
  line = num[3..4] == '00' ? i.to_s + '. ' : "\t- "
  line << "[#{name}](#{PATH + fname})"
end

open('../README.mdown', 'w') do |f|
  IO.read('./table_of_contents.txt').each do |line|
    if line[0].chr == '0'
      i, num, name = line[0,3].to_i, line[0,5], line[7..-2]
      line = line[6].chr == '#' ? (i.to_s << '. ' << name) : mk_link(i, num, name)
    end
    f.puts line
  end
end unless File.exist? '../README.mdown'


# Import source code ../src/***.rb and create links to ../images/***.png (or.jpg)
def read_src name
  IO.readlines('../src/' + name).collect{|c| "\t" + c}
end

def make_link name
  lines = []
  lines << "**#{name}**"
  lines << "\n"
  lines << "![#{name}](http://github.com/ashbb/shoes_tutorial_html/tree/master%2Fimages%2F#{name}?raw=true)"
end

Dir.glob("../mdowns/*.mdown").each do |file|
  lines = IO.readlines(file)
  open(file, 'w') do |f|
    lines.each do |line|
      new_line = line
      line.sub(/^# *(.*\.rb)/){new_line = read_src($1)}
      line.sub(/^# *(.*\.(png|jpg))/){new_line = make_link($1)}
      #line.sub(/^# *page *(prev|next|.*)/){new_line = make_page_link($1)}
      f.puts new_line
    end
  end
end



