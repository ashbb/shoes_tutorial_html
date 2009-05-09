# sample70.rb
%w[ashbb Paul Max].each do |name|
  blk = lambda do
    self.clipboard = ''
    ed = edit_line
    button('ok'){self.clipboard = "#{name}: #{ed.text}"}
    slot = stack
    msg = ''
    every 1 do
      slot.append do
        tmp = clipboard
        para tmp unless msg == tmp
        msg = tmp
      end
    end
  end

  Shoes.app :title => name, :width => 300, :height => 500, &blk
end
