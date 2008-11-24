cpath = "](http://github.com/ashbb/shoes_tutorial_html/tree/master%2Fimages%2F"
npath = "](http://www.rin-shun.com/rubylearning/shoes/shoes_tutorial_html/images/"


Dir.glob("../mdowns/*.mdown").each do |file|
  lines = IO.readlines(file)
  open(file, 'w') do |f|
    lines.each do |line|
      f.puts line.sub(cpath, npath).sub('?raw=true)', ') <!-- patch -->')
    end
  end
end

=begin
#line = "![sample19.png](http://github.com/ashbb/shoes_tutorial_html/tree/master%2Fimages%2Fsample19.png?raw=true)\n"
line = ''
new_line = line.sub(cpath, npath).sub('?raw=true)', ') <!-- patch -->')
puts line
puts new_line  unless new_line == line
=end
