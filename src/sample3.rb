# sample3.rb
Shoes.app do
  stack do
    image "http://www.rin-shun.com/shoes/hackety-org-header.png"
  end
  stack :width => 200 do
    para "column 1"
  end
  stack :width => -200 do
    para "column 2"
  end
end
