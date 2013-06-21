#!/usr/bin/env ruby
require '../example'

example %q{
puts nil.class
}

example_expected true,  %q{1 == 1               # true}
example_expected false, %q{1 == 2               # false}
example_expected false, %q{'russ' == 'smart'    # sadly, false}
example_expected true,  %q{(1 < 2)              # true}
example_expected false, %q{(4 > 6)              # nope}

example %q{
a = 1
b = 10000
(a > b)              # no way

assert_false(a > b)
}

example_true %q{(4 >= 4)		# yes!}
example_true %q{(1 <= 2)		# also true}

puts

example_true  %q{(1 == 1) and (2 == 2)    # true}
example_false %q{(1 == 1) and (2 == 3)    # false}
puts

example_true  %q{(1 == 1) && (2 == 2)     # true}
example_false %q{(1 == 1) && (2 == 3)     # false}
puts

example_true  %q{(1 == 1) or (2 == 2)	# yup}
example_false %q{(2 == 1) || (7 > 10)	# nope}
example_true  %q{(1 == 1) or (3 == 2)	# yup}
example_false %q{(2 == 1) || (3 == 2)	# nope}
puts

example_true  %q{not (1 == 2)  # true}
example_false %q{! (1 == 1)    # false}
example_true  %q{not false     # true}
puts

example_true %q{true and 'fred'  # true, since 'fred' is neither nil nor false}
example_true %q{'fred' && 44	 # true, since both 'fred' and 44 are true}
example_false %q{nil || false	 # false, since both nil and false are false}
puts

example %q{
if 0
  puts 'Zero is true!'
end
}
