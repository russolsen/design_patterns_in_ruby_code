#!/usr/bin/env ruby
require '../example'


example %q{
begin
  quotient = 1 / 0   # Boom!
rescue
  puts 'Something bad happened'
end
}

example %q{
begin
  quotient = 1 / 0   # Boom!
rescue ZeroDivisionError
  puts 'You tried to divide by zero'
end
}

expect_error %q{
  denominator = 0


if denominator == 0
  raise ZeroDivisionError
end
return numerator / denominator
}

#
# shortcuts
#

expect_error %q{ raise ZeroDivisionError.new }
expect_error %q{ raise ZeroDivisionError }
expect_error %q{ raise 'Something bad happened' }

