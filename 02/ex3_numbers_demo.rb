#!/usr/bin/env ruby
require '../example'

example %q{
x = 3
y = 4
sum = x + y
product = x * y 

puts "x = #{x}"
puts "y = #{y}"
}

example %q{
6 / 3            # is 2
7 / 3            # is still 2
8 / 3            # 2 again
9 / 3            # is 3 finally!

raise 'error' unless (6 / 3) == 2
raise 'error' unless (7 / 3) == 2
raise 'error' unless (8 / 3) == 2
raise 'error' unless (9 / 3) == 3
}

example %{
2                     # a Fixnum
437                   # a Fixnum
2**437                # very definitely a big, Bignum
123456789000000000000 # Another Bignum
1234567890/1234567890 # Divide 2 Bignums, and get 1, a Fixnum

raise 'error' unless (2).class == Fixnum
raise 'error' unless (437).class == Fixnum
raise 'error' unless (2**437).class == Bignum
raise 'error' unless (123456789000000000000).class == Bignum
raise 'error' unless (1234567890/1234567890).class == Fixnum
}

example %q{
  a = 4
  a += 1      # a is now 5
  a -= 2      # a is now 3
  a *= 4      # a is now 12
  a /= 2      # a is now 6
}

example %q{
3.14159
-2.5
6.0
0.0000000111

raise 'error' unless (3.14159).class == Float
raise 'error' unless (-2.5).class == Float
raise 'error' unless (6.0).class == Float
raise 'error' unless (0.0000000111).class == Float
}


example %q{
2.5 + 3.5        # is 6.0
0.5 * 10         # is 5.0
8.0 / 3.0        # is 2.66666666

raise 'error' unless (2.5 + 3.5) - 6.0 < 0.00001
raise 'error' unless (0.5 * 10)  - 5.0 < 0.00001
raise 'error' unless (8.0 / 3.0) - 2.666666666666 < 0.00001

}
