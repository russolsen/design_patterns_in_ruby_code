#!/usr/bin/env ruby


require '../example'
require 'ex1_simple_emp'

example %q{
fred = Employee.new("Fred Flintstone", "Crane Operator", 30000.0)

# Give Fred a raise.

fred.salary=35000.0
}
