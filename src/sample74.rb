# sample74.rb
require 'zoom'

Shoes.app :title => 'Zoom Demo v0.1' do
  extend Zoom
  nostroke
  imgs = []
  imgs << oval(100, 100, 100, :fill => crimson)
  imgs << rect(200, 250, 100, :fill => limegreen, :reverse => true)
  imgs << image(:left => 300, :top => 100, :width => 200, :height => 200){
    star 100, 100, 5, 100, 40, :fill => orange}.rotate(36)
  
  imgs.each{|e| zoom e}
end