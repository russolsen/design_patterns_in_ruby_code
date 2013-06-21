#!/usr/bin/env ruby
require '../example'

example %q{
age = 19

if (age >= 18) 
  puts 'You can vote!'
else
  puts 'You are too young to vote.'
end
}

example %q{

[0, 5, 57, 99, 101, 999].each do |weight|

puts weight

if (weight < 1)
  puts 'very light'                                                                                               
elsif (weight < 10)
  puts 'a bit of a load'                                                                                               
elsif (weight < 100)
  puts 'heavy'                                                                                               
else
  puts 'way too heavy'
end

end
}

example %q{
[0, 5, 57, 99, 101, 999].each do |weight|

puts weight

if weight < 1
  puts 'very light'                                                                                               
elsif weight < 10
  puts 'a bit of a load'                                                                                               
elsif weight < 100
  puts 'heavy'                                                                                               
else
  puts 'way too heavy'
end

end
}

example %q{

weight = 101

puts('way too heavy') if weight >= 100
}


example %q{
[99, 100, 101].each do |weight|
puts weight
puts('way too heavy') unless weight < 100
end
}

example %q{
[99, 100, 101].each do |weight|
puts weight
unless weight < 100
  puts 'way too heavy'
end
end
}
