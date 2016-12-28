#!/usr/bin/env ruby
require_relative '../example'

require_relative 'ex11_mm_virtual'
require_relative 'ex1_account'


example %q{
account = VirtualProxy.new { BankAccount.new }

puts account
}

