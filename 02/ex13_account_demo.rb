#!/usr/bin/env ruby
require '../example'

require 'ex13_account'

example %q{
my_account = BankAccount.new('Russ')

my_account = BankAccount.new 'Russ' 
}
