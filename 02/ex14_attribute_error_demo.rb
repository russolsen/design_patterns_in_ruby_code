#!/usr/bin/env ruby


require 'ex13_account'


my_account = BankAccount.new('russ')

begin
  puts(my_account.balance)
rescue
  puts "Got an error"
end
