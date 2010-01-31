# sample77.rb
Shoes.app :title => 'A new option :dash => :onedot or :nodot' do
  dash = lambda{|color| {:strokewidth => 10, :dash => :onedot, :stroke => color}}
  border green, dash[green]
  nofill
  rect 100, 100, 200, 50, dash[red]
  line 100, 100, 500, 300, dash['../images/loogink.png']
  loogink = image '../images/loogink.png', :left => 450, :top => 100
  
  fill green..yellow, :angle => 80
  stroke red..blue, :angle => 90
  cap :curve
  a = animate 12 do |i|
    loogink.rotate -5 
    @c.remove if @c
    r = i * (PI * 0.01)
    @c = arc 300, 350, 480, 160, 0, i * (PI * 0.01), dash[nil]
    a.stop if r >= TWO_PI
  end
end
