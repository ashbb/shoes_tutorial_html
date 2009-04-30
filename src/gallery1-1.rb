# gallery1-1.rb
Shoes.setup do
  gem 'win32-sapi' if RUBY_PLATFORM =~ /win32/
end

Shoes.app :width => 400, :height => 173 do
  background orange
  image '../images/rubytop10-teacher.gif', :top => 20
  inscription ins('Listen'), :align => 'right', :stroke => green
  words = "Ruby's top teacher, Satish Talim"
  case RUBY_PLATFORM
    when /darwin/
      click{`osascript; say "#{words}"`}
    when /win32/
      require 'win32/sapi5'
      click{Win32::SpVoice.new.speak words}
    else
  end
end
