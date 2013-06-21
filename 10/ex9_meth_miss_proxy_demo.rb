#!/usr/bin/env ruby
require '../example'

require 'ex9_meth_miss_proxy'
require 'ex1_account'


example %q{

ap = AccountProxy.new( BankAccount.new(100) )
ap.deposit(25)
ap.withdraw(50)
puts "account balance is now: #{ap.balance}"

}
