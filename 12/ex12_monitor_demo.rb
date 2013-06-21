#!/usr/bin/env ruby

require '../example'

example %q{

require 'monitor'


class Account

  attr_reader :balance

  def initialize
    @balance=0
    @monitor = Monitor.new
  end

  def transaction(amount)
    @monitor.synchronize do
      # Only one thread at a time here
      @balance += amount
    end
  end

end

account = Account.new

t2=Thread.new do
  100000.times { account.transaction(-10)}
end

t1=Thread.new do 
  100000.times { account.transaction(10) }
end

t1.join
t2.join
puts account.balance
}
