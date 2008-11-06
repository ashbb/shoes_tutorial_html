# sample47.rb
blk = proc{para 'Hello world!', :align => 'center'}

Shoes.app :width => 150, :height => 40, &blk
