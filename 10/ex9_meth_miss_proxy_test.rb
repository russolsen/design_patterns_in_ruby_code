#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_account'
require_relative 'ex9_meth_miss_proxy'

class MethodMissingProxyAccountTest < Test::Unit::TestCase

  def test_proxy

    ba = BankAccount.new(100)
    proxy = AccountProxy.new(ba)

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
