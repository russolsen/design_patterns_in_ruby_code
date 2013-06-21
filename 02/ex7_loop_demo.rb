#!/usr/bin/env ruby
require '../example'

example %q{
i = 0
while i < 4
  puts "i = #{i}"
  i = i + 1
end
}

example %q{
i = 0
until i >= 4
  puts "i = #{i}"
  i = i + 1
end
}

example %q{
array = ['first', 'second', 'third']

for element in array
  puts element
end
}

example %q{
array = ['first', 'second', 'third']

array.each do |x|
  puts x
end
}

example %q{
names = ['george', 'mike', 'gary', 'diana']

names.each do |name|
  if name == 'gary'
    puts 'Break!'
    break
  end
  puts name
end
}


example %q{
names = ['george', 'mike', 'gary', 'diana']


names.each do |name|
  if name == 'gary'
    puts 'Next!'
    next
  end
  puts name
end
}
