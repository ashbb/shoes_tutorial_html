# sample13.rb
Shoes.app :width => 450, :height => 250 do
  stack :margin => 10, :width => 200 do
    subtitle 'Shoes ToDoList'
    para 'Add a list.'
    @add = edit_line
    button 'Save' do
      @notes.append do
        para @add.text, ' ', link('delete'){|e| e.parent.remove}
      end
      @add.text = ''
    end
  end
  @notes = stack :margin => 10, :width => -200
end
  


  