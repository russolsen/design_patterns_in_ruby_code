#!/usr/bin/env ruby
require '../example'

example %q{

max_length = 44
maxLength  = 44
numberPages = 44
numberpages = 44
a_very_long_variable_name = 44
_flag = 44
column77Row88 = 44
___ = 44

puts max_length
puts maxLength 
puts numberPages
puts numberpages
puts a_very_long_variable_name
puts _flag
puts column77Row88

max_length
maxLength 
numberPages
numberpages
a_very_long_variable_name
_flag
column77Row88
___

}


example %q{
first_name = 'russ'
last_name = 'olsen'
full_name = first_name + ' ' + last_name

puts full_name
}

example %q{
POUNDS_PER_KILOGRAM = 2.2
StopToken = 'end'
FACTS = 'Death and taxes'

puts POUNDS_PER_KILOGRAM
puts StopToken
puts FACTS
}

example %q{
StopToken = 'end'
}

