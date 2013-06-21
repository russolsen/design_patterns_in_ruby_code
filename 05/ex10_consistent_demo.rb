#!/usr/bin/env ruby


require '../example'
require 'ex10_consistent'

example %q{
fred = Employee.new("Fred", "Crane Operator", 30000)

fred.salary = 1000000
# Warning! Inconsistent state here!
fred.title = 'Vice President of Sales'

}


example %q{
fred = Employee.new("Fred", "Crane Operator", 30000)



# Don't inform the observers just yet

fred.salary = 1000000
fred.title = 'Vice President of Sales'

# Now inform the observers!

fred.changes_complete
}


