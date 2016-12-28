#!/usr/bin/env ruby
require_relative '../example'


require_relative  'ex21_module'

example %q{

tryit = TryIt.new
tryit.say_hello

}


example %q{

fred = Employee.new
fred.say_hi

}
