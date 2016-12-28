#!/usr/bin/env ruby
require_relative '../example'

require_relative 'ex13_account'
require_relative 'ex15_manual_accessor'


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
