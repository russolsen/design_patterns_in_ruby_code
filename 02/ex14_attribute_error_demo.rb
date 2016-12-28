#!/usr/bin/env ruby


require_relative 'ex13_account'


my_account = BankAccount.new('russ')

begin
  puts(my_account.balance)
rescue
  puts "Got an error"
end
