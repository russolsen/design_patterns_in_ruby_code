#!/usr/bin/env ruby

require '../example'
require 'ex3_block_button'

example %q{
new_button = SlickButton.new do
  #
  # Create a new docuument...
  #
end

new_button.on_button_push
}


test_button =  SlickButton.new { puts "pushed" }
test_button.on_button_push

