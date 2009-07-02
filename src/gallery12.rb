# gallery12.rb
require 'gallery12-flickr'

Shoes.app :width => 300, :height => 300, :title => 'Finding Photos on Flickr v0.1' do
  extend FindingFlickr
  
  para "Find: "
  @input = para('panda', :weight => 'bold')
  
  @star = image :left => 275, :top => 3, :width => 20, :height => 20 do
    star 10, 10, 12, 10, 7, :fill => deepskyblue, :stroke => orange
  end
  
  def show_flickr
    finding_flickr @input.text do |photos|
      @photo = image photos[0], :left => 30, :top => 40
      @e = every 10 do |i|
        @photo.remove
        @photo = image photos[(i + 1) % photos.length], :left => 30, :top => 40
      end
    end
  end
  
  def clear_flickr
    @e.remove
    @photo.remove
  end
  
  keypress do |k|
    case k
      when String
        @input.text += k
      when :backspace
        @input.text = @input.text[0..-2]
      else
    end
  end
  
  show_flickr
  @star.click{clear_flickr; show_flickr}
end


