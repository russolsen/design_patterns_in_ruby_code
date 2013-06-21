#!/usr/bin/env ruby
require '../example'

example %q{
x = []                               # an empty array
y = Array.new                        # another one
a = [ 'neo',  'trinity',  'tank']    # a three element array

a[0]                                 # neo
a[2]                                 # tank

puts a[0]
puts a[2]

puts a.length                        # is 3
puts a.size                          # is also 3

puts(a.length)
puts(a.size)

a[3] = 'morpheus'

puts a[3]
puts a.length
}

example %q{
a = [ 'neo',  'trinity',  'tank']


a[6] = 'keymaker'
puts(a[4])
puts(a[5])
puts(a[6])
}

example %q{
a = [ 'neo',  'trinity',  'tank']

a << 'mouse'
puts a[7]
puts a.size
}

example %q{
mixed = ['alice', 44, 62.1234, nil, true, false]
}


example %q{
a = [ 77, 10, 120, 3]
a.sort               # Returns [3, 10, 77, 120]
}

example %q{
a = [1, 2, 3]
a.reverse            # Returns [ 3, 2, 1]
}

example %q{
a = [ 77, 10, 120, 3]
a.sort!           # a is now [3, 10, 77, 120]
a.reverse!        # a is now [120, 77, 10, 3]
}

