#!/usr/bin/env ruby
require '../example'

example %q{
first = "Mary had"
second = ' a little lamb'
poem = first + second

puts(poem)
}

example %q{
first = "Mary had"
second = ' a little lamb'
poem = first + second

puts(first.length)     # prints 8
}

example %q{
first = "Mary had"
second = ' a little lamb'
poem = first + second


puts(poem.upcase)
puts(poem.downcase)
}

example %q{
first = "Mary had"
second = ' a little lamb'
poem = first + second


poem[0] = 'G'
puts(poem)
}

example %q{
first = "Mary had"
second = ' a little lamb'
poem = first + second


second_char = poem[1]   # second_char is now 97, the code for 'a'
puts(second_char)
}

example %q{
first = "Mary had"
second = ' a little lamb'
poem = first + second


poem[0]=67.chr           # 67 is the code for 'C'


puts(poem)
}

example %q{
n = 42
puts("The value of n is #{n}.")
}

example %q{
city = 'Washington'
temp_f = 84
puts("The city is #{city} and the temp is #{5.0/9.0 * (temp_f-32)} C")
}

example %q{
name = 'russ'
first_name = name
name[0] = 'R'
puts(name)
puts(first_name)
}


example %q{
city = 'Washington'
temp_f = 84

a_multiline_string = %Q{
The city is #{city}. 
The temp is #{5.0/9.0 * (temp_f-32)} C
}

puts(a_multiline_string)
}

example %q{

puts \
%q<a string>

}

example %q{

puts \
%Q-a string-
}
