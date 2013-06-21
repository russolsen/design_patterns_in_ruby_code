#!/usr/bin/env ruby


require '../example'
require 'ex2_hardcoded'

example %q{
payroll = Payroll.new
fred = Employee.new('Fred', 'Crane Operator', 30000, payroll)
fred.salary = 35000
}
