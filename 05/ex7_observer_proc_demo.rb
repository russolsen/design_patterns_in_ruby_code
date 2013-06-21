#!/usr/bin/env ruby


require '../example'
require 'ex7_observer_proc'

example %q{

fred = Employee.new('Fred', 'Crane Operator', 30000)

fred.add_observer do |changed_employee|
    puts "Cut a new check for #{changed_employee.name}!"
    puts "His salary is now #{changed_employee.salary}!"
end

fred.salary = 40000
}
