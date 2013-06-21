#!/usr/bin/env ruby
require '../example'

require 'ex6_virtual_block'
require 'ex1_account'

example %q{

account = VirtualAccountProxy.new { BankAccount.new(10) }

pp account
account.deposit(1)
pp account
}
