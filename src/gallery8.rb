# gallery8.rb
Shoes.app :width=>320, :height=>200 do
  str = "../images/Parallax-scroll-example-layer-%s.gif"
  imgs = []
  4.times do |i|
    path = str % i
    imgs << [image(path), image(path), imagesize(path).first]
  end
 
  animate 24 do |i|
    imgs.each_with_index do |e, n|
      img1, img2, w = e
      x = -(n * i % w)
      img1.move x, 0
      img2.move x + w, 0
    end
  end
end