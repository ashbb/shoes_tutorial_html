# mkpdf.rb
# Original code was wirtten by Jerry Anning.
# Added README.mdown converting part by ashbb

require 'prawn'

def gather
  # this method modified from mkbightml.rb
  buf = IO.readlines('../README.mdown') << "PAGINATE\n"
  buf = buf.collect do |line|
    pos = line.index('](')
    pos ? line[0..pos] + "\n" : line
  end
  buf = buf.to_s
  
  Dir.glob("../mdowns/*.mdown").each do |f|
    buf << IO.read(f) << "PAGINATE\n"
  end
  buf
end

def parse(buf)
  buf = buf.gsub(/ <br>/, '')
  buf = buf.gsub(/\\_/, '_')
  
  arr = buf.split("\n")
  
  arr.each_index do |x|
    case arr[x]
      when /^-+$/, /^=+$/
        arr[x - 1] = 'BOLDEN' + arr[x - 1]
        arr[x] = 'REMOVEME'
      when /^!\[(.+)\].+/
        arr[x] = 'IMAGEIT' + $1
      when /(.*)\[(.+)\]\((.+)\)(.*)/
        arr[x] = $1 + $2 + ' ' + $3 + $4
    end
  end
  
  arr.delete_if { |x| x == "REMOVEME" }
end

def mkpdf
  Prawn::Document::generate("../pdf/ShoesTutorialNote.pdf") do
    parse(gather).each do |x|
      case x
        when /PAGINATE/
          start_new_page
        when /^BOLDEN(.+)/
          text $1, :style => :bold
        when /IMAGEIT(.+)/
          image "../images/#{$1}"
        else
          text x
      end
    end
  end
end

mkpdf