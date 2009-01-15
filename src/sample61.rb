#sample61.rb
Shoes.app :height => 250, :width => 200, :resizable => false do
  def do_calc
    @number = @previous.send(@op, @number)  if @op
    @op = nil
  end
  
  @previous, @number, @op = 0, 0, nil
  
  background "#EEC".."#996", :curve => 5, :margin => 2

  stack :margin => 2 do
    stack :margin => 8 do
      @number_field = para strong(@number)
    end

    flow :width => 218, :margin => 4 do
      %w(7 8 9 / 4 5 6 * 1 2 3 - 0 Clr = +).each do |btn|
        button btn, :width => 46, :height => 46 do
          case btn
            when /[0-9]/
              @number = @number.to_i * 10 + btn.to_i
            when 'Clr'
              @previous, @number, @op = 0, 0, nil
            when '='
              do_calc
            else
              do_calc
              @previous, @number = @number, nil
              @op = btn
          end      
          @number_field.replace strong @number
        end
      end
    end
  end
end
