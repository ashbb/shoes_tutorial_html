# simple-calc.rb
class Calc              #1
  def initialize        #2
    @number = 0
    @previous = nil
    @op = nil
  end

  def to_s              #3
    @number.to_s
  end
  
  (0..9).each do |n|                              #4
    define_method "press_#{n}" do
      @number = @number.to_i * 10 + n
    end
  end

  def press_clear
    @number = 0
  end

  {'add' => '+', 'sub' => '-', 'times' => '*', 'div' => '/'}.each do |meth, op|   #5
    define_method "press_#{meth}" do
      if @op                                      #6
        press_equals
      end
      @op = op
      @previous, @number = @number, nil           #7
    end
  end

  def press_equals                                #8
    @number = @previous.send(@op, @number.to_i)
    @op = nil
  end

end

number_field = nil
number = Calc.new                                                 #9
Shoes.app :height => 250, :width => 200, :resizable => false do
  background "#EEC".."#996", :curve => 5, :margin => 2

  stack :margin => 2 do

    stack :margin => 8 do
      number_field = para strong(number)                          #10
    end

    flow :width => 218, :margin => 4 do
      %w(7 8 9 / 4 5 6 * 1 2 3 - 0 Clr = +).each do |btn|
        button btn, :width => 46, :height => 46 do                #11
          method = case btn
            when /[0-9]/: 'press_'+btn
            when 'Clr': 'press_clear'
            when '=': 'press_equals'
            when '+': 'press_add'
            when '-': 'press_sub'
            when '*': 'press_times'
            when '/': 'press_div'
          end
          
          number.send(method)                                     #12
          number_field.replace strong(number)                     #13
        end
      end
    end
  end

end
