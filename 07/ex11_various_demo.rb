#!/usr/bin/env ruby

require '../example'

example %q{

h = {'name'=>'russ', 'eyes'=>'blue', 'sex'=>'male'}
h.each_key {|key| puts key}

}

example %q{
h = {'name'=>'russ', 'eyes'=>'blue', 'sex'=>'male'}

h.each_value {|value| puts value}
}

example %q{
h = {'name'=>'russ', 'eyes'=>'blue', 'sex'=>'male'}

h.each {|key, value| puts "#{key} #{value}"}
}

example %q{
f = File.open('names.txt')
while not f.eof?
  puts f.readline 
end
f.close
}


example %q{
f = File.open('names.txt')
f.each {|line| puts(line)}
f.close
}


example %q{
f = File.open('short.txt')
f.each_byte {|byte| puts(byte)}
}



example_trunc %q{
require 'pathname'

pn = Pathname.new('/tmp')

pn.each_filename {|file| puts "File: #{file}"}
}

example_trunc %q{
pn = Pathname.new('/tmp')

pn.each_entry {|entry| puts "Entry: #{entry}"}
}

example_trunc %q{
ObjectSpace.each_object {|object|  puts "Object: #{object}"}
}

example_trunc %q{
ObjectSpace.each_object(Numeric) {|n| puts "The number is #{n}"}
}


example_trunc %q{
def subclasses_of(superclass)
  subclasses = []
  ObjectSpace.each_object(Class) do |k|
    next if !k.ancestors.include?(superclass) || superclass == k ||
             k.to_s.include?('::') || subclasses.include?(k.to_s)
    subclasses << k.to_s
  end
  subclasses
end

pp subclasses_of(Numeric)
}
