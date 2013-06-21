#!/usr/bin/env ruby

require '../example'

expect_error %q{

class SomeClass
  def a_method
    puts('hello from a method')
  end
end

SomeClass.a_method
}

example %q{
class SomeClass
  puts("Inside a class def, self is #{self}")
end
}

example %q{

class SomeClass
  def self.class_level_method
    puts('hello from the class method')
  end
end

SomeClass.class_level_method
}

example %q{

class SomeClass
  def SomeClass.class_level_method
    puts('hello from the class method')
  end
end

SomeClass.class_level_method
}

