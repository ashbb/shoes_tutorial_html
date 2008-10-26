# sample34-1.rb
Shoes.app :title => 'Image MENU', :height => 250 do
  background lightskyblue.to_s..lightsalmon.to_s, :angle => 30
  
  def menu title, items, n, pr
    nostroke
    nofill
    tb = image(:left => 0, :top => 0, :width => 100, :height => 21){rect(0, 0, 100, 21)}
    para strong title
    @f ||= []
    @f << flow do
      items.each_with_index do |e, i|
        nostroke
        nofill
        b = image(:width => 100, :height => 21){rect(0, 0, 100, 21)}
        f = image(:width => 100, :height => 21){rect(0, 0, 100, 21, :fill => khaki,:curve => 8)}.hide
        yield b, f, i, e
        b.hover{f.show}
        b.leave{f.hide}
        b.click{pr.call(e); @f[n].toggle}
      end
    end.hide
    
    tb.click{@f[n].toggle}
  end
  
  @msg = []
  para 'Selected Who?: '
  @msg << para('', :stroke => forestgreen)
  para 'Selected What?: ', :left => 300
  @msg << para('', :stroke => tomato)
  
  flow :left => 30, :top => 50, :width => 100 do
    pr1 = proc{|e| alert(e)}
    menu 'Who?', %w(Satoshi Vic Mareike Krzysztop Leticia), 0, pr1 do |b, f, i, e|
      b.move 0, i*23
      f.move 0, i*23
      para i, '. ', e, "\n"
    end
  end

  flow :left => 150, :top => 50, :width => 400 do
    pr2 = proc{|e| @msg[1].text = strong(e)}
    menu 'What?', %w(apple banana orange), 1, pr2 do |b, f, i, e|
      b.move((i+1)*102 , -32)
      f.move((i+1)*102 , -32)
      para "#{i}. #{e}", :left => 150 + (i+1)*102, :top => 50
    end
  end
end