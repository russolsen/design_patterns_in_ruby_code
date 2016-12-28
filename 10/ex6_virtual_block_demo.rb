#!/usr/bin/env ruby
require_relative '../example'

require_relative 'ex6_virtual_block'
require_relative 'ex1_account'

example %q{

account = VirtualAccountProxy.new { BankAccount.new(10) }

pp account
account.deposit(1)
pp account
}
