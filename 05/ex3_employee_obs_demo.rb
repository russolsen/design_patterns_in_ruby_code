#!/usr/bin/env ruby


require '../example'
require 'ex3_employee_obs'

example %q{
fred = Employee.new('Fred', 'Crane Operator', 30000.0)

payroll = Payroll.new
fred.add_observer( payroll )

fred.salary=35000.0





class TaxMan
  def update( changed_employee )
    puts "Send #{changed_employee.name} a new tax bill!"
  end
end

tax_man = TaxMan.new
fred.add_observer(tax_man)

fred.salary=90000.0

}


