# sample15.rb
Shoes.app :width => 150, :height => 40 do
  para 'Hello world!'
  Shoes.p 'This is a test message.'
  debug 'Running Shoes on ' + RUBY_PLATFORM
  error 'This is an error message.'
  info 'Shoes release name is ' + Shoes::RELEASE_NAME
end