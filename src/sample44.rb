# sample44.rb
Shoes.setup do
  gem 'BlueCloth'
end

require 'BlueCloth'
BROWSER = 'C:/Program Files/Mozilla Firefox/firefox.exe'
PROTOCOL = 'file:///'
mfolder = File.dirname(Dir.pwd) + '/mdowns'
hfolder = File.dirname(Dir.pwd) + '/html'

Shoes.app :width => 450, :height => 130, :title => 'Shoes Tutorial Note Launcher' do
  background dimgray..gainsboro, :angle => 90
  @slot = stack{}
  
  Dir.entries(mfolder).each do |mname|
    @slot.append do
      hname = mname.sub(/\.mdown/, '.html')
      mfile = mfolder + '/' + mname
      hfile = hfolder + '/' + hname
      para link(strong(hname), :stroke => white){
        b = BlueCloth.new IO.read(mfile)
        open(hfile, 'w'){|f| f.puts b.to_html}
        system BROWSER, PROTOCOL + hfile
      } if /\.mdown$/ =~ mname
    end
  end
end
