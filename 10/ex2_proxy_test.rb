#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_account'
require 'ex2_proxy'

class ProxyAccountTest < Test::Unit::TestCase


  def test_proxy

    ba = BankAccount.new(100)
    proxy = BankAccountProxy.new(ba)

    assert_equal 100, ba.balance
    assert_equal 100, proxy.balance

    assert_equal 200, proxy.deposit(100)
    assert_equal 200, ba.balance
    assert_equal 200, proxy.balance

    assert_equal 180, proxy.withdraw(20)
    assert_equal 180, ba.balance
    assert_equal 180, proxy.balance
  end
  
end
