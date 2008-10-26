# sample33.rb
Shoes.app :title => 'Button MENU', :height => 250 do
  def menu title, items, n
    button title, :align => 'center', :width => 100 do
      if @toggle[n]
        items.each{|e| @f[n].append{button(e, :align => 'center', :width => 100){@msg.text = strong(e)}}}
      else
        @f[n].clear
        @msg.text = ''
      end
      @toggle[n] = !@toggle[n]
    end
  end
  
  para 'Selected: '
  @msg = para '', :stroke => green
  
  @toggle = true, true
  @f = []
  
  flow :left => 30, :top => 50, :width => 100 do
    menu 'Who?', %w(Satoshi Vic Mareike Krzysztop Leticia), 0
  end
  @f << flow(:left => 30, :top => 90, :width => 100)
  
  flow :left => 150, :top => 50, :width => 100 do
    menu 'What?', %w(apple banana orange), 1
  end
  @f << flow(:left => 270, :top => 50, :width => 400)
end