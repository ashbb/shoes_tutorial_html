# sample72-4.rb
require 'observer'

class TimeServer
  include Observable
  
  def initialize
    Thread.start do
      [0, 5, 1, 5, 2, 10, 1].each do |ti|
        sleep ti
        changed
        notify_observers ti
      end
    end
  end
end

module TimeWatcher
  def update ti
    @msg.text += ti.to_s
  end
end

Shoes.app :width => 200, :height => 100 do
  @msg = para
  extend TimeWatcher
  TimeServer.new.add_observer self
end
