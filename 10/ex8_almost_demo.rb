#!/usr/bin/env ruby

require '../example'
require 'ex1_account'

example %q{

class AccountProxy
  def initialize(real_account)
    @subject = real_account
  end

  def method_missing(name, *args)
    puts "Drats! There is no #{name} method."
  end
end

ap = AccountProxy.new( BankAccount.new(100) )
ap.deposit(25)

}
