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
