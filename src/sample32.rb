# sample32.rb
Shoes.app :width => 350, :height => 250, :title => 'Menus' do
  def menu items
    flow do
      items.each_with_index do |e, i|
        nostroke
        nofill
        b = image(:width => 100, :height => 21){rect(0, 0, 100, 21)}
        f = image(:width => 100, :height => 21){rect(0, 0, 100, 21, :fill => yellow,:curve => 8)}.hide
        b.move 0, i*23
        f.move 0, i*23
        para i, '. ', e, "\n"
        b.hover{f.show; @msg.text = strong(e)}
        b.leave{f.hide; @msg.text = ''}
      end
    end
  end
  
  para 'Selected: '
  @msg = para '', :stroke => green
  
  flow :left => 50, :top => 50 do
    para strong "What?\n"
    menu %w(apple tomato orange)
  end
  
  flow :left => 200, :top => 50 do
    para strong "Who?\n"
    menu %w(Satoshi Krzysztof Victor Leticia Mareike)
  end
end
