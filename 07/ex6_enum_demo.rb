#!/usr/bin/env ruby

require '../example'

example %q{
a = [ 'joe', 'sam', 'george' ]
result = a.all? {|element| element.length < 4}
puts result

result = a.any? {|element| element.length < 4}
puts result
}
