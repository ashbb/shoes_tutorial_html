# sample74-1.rb
require 'zoom-1'

Shoes.app :title => 'Zoom Demo v0.1a' do
  extend Zoom
  nostroke
  imgs = []
  imgs << image(:left => 100, :top => 100, :width => 100, :height => 100){
    oval(0, 0, 100, :fill => crimson)}
  imgs << image(:left => 200, :top => 250, :width => 100, :height => 100, :reverse => true){
    rect(0, 0, 100, :fill => limegreen)}
  imgs << image(:left => 300, :top => 100, :width => 200, :height => 200){
    star 100, 100, 5, 100, 40, :fill => orange}.rotate(36)
  
  imgs.each{|e| zoom e}
end