#!/usr/bin/env ruby
require '../example'

example %q{
#
# The traditional first program in any language.
#
puts( 'hello world' )
}

example %q{
puts( 'hello world' )    # say hello
}

example %q{
#
# A legal, but very untypical Ruby use of the semicolon.
#
puts('hello world');
#
# A little more de rigueur, but still rare use of semicolons
#
puts('hello '); puts('world')

}

example %q{
x = 10 +
  20 + 30
}

example %q{
x = 10 \
    + 10
}

example %q{
puts 'hello world'
}

example %q{
puts "hello world"
puts 'A backslash: \ a single quote \' the end'
}
