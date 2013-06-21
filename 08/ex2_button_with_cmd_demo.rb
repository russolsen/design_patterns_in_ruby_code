#!/usr/bin/env ruby

require '../example'
require 'ex2_button_with_cmd'

example %q{
save_button = SlickButton.new( SaveCommand.new )



pp save_button

}
