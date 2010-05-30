# sample79.rb
Shoes.app width: 360, height: 360 do
  stack top: 30, left: 30, width: 300, height: 300, scroll: true do
    100.times do |i|
      flow do
        bg = background(pink).hide
        para "phone number #{i}"
        hover{bg.show}
        leave{bg.hide}
        click{alert "hi! no.#{i}"}
      end
    end
  end
end
