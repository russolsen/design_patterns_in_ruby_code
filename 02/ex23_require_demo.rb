#!/usr/bin/env ruby
require '../example'

example %q{
require 'account.rb'

class Portfolio
  # Uses BankAccount.


  ba = BankAccount.new('russ')
end
}


example %q{
require 'account'
}


example %q{

require 'uri'
yahoo = URI.parse('http://www.yahoo.com')

}


example %q{

require 'rubygems'
require 'runt'

}
