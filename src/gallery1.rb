# gallery1.rb
Shoes.setup do
  gem 'win32-sapi'
end

require 'win32/sapi5'

Shoes.app :width => 400, :height => 173 do
  background orange
  image '../images/rubytop10-teacher.gif', :top => 20
  inscription ins('Listen'), :align => 'right', :stroke => green
  words = "Ruby's top teacher, Satish Talim"
  click{Win32::SpVoice.new.speak words}
end