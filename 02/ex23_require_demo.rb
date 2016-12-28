#!/usr/bin/env ruby
require_relative '../example'

example(%q{
require_relative 'account.rb'

class Portfolio
  # Uses BankAccount.


  ba = BankAccount.new('russ')
end
}, __FILE__)


example(%q{
require_relative 'account'
}, __FILE__)


example %q{

require 'uri'
yahoo = URI.parse('http://www.yahoo.com')

}


example %q{

require 'rubygems'
require 'pry'

}
