#!/usr/bin/env ruby
require '../example'

require 'ex1_account'
require 'ex2_proxy'


example %q{


account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)

}

