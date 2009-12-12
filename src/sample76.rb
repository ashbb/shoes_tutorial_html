# sample76.rb
def Shoes.hook
  $app.instance_eval{alert @msg.text}
end

$app = Shoes.app :width => 400, :height => 150 do
  edit_line{|el| @msg.text = el.text}
  @msg = para
end
