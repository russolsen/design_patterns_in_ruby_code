#!/usr/bin/env ruby
require '../example'

require 'ex11_mm_virtual'
require 'ex1_account'


example %q{
account = VirtualProxy.new { BankAccount.new }

puts account
}

