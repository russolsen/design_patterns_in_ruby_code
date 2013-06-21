#!/usr/bin/env ruby

require '../example'

example %q{

def for_each_element(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end


a = [10, 20, 30]
for_each_element(a) {|element| puts "The element is #{element}"}
}


example %q{
a = [10, 20, 30]
a.each {|element| puts "The element is #{element}"}

}
