#!/usr/bin/env ruby
require '../example'

require 'ex13_account'
require 'ex15_manual_accessor'


example %q{
  my_account = BankAccount.new('russ')

  puts(my_account.balance)
}



example %q{
  my_account = BankAccount.new('russ')



  my_account.set_balance(100)

  puts(my_account.balance)
}

example %q{
  my_account = BankAccount.new('russ')

  my_account.balance = 100

  puts(my_account.balance)
}
