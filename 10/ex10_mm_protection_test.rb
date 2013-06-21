#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_account'
require 'ex10_mm_protection'

#
# Rewire the etc module to do what I want.
#
def Etc.getlogin
  'russ'
end
  
class MethodMissingProtectionProxyAccountTest < Test::Unit::TestCase


  def test_proxy
    ba = BankAccount.new(100)
    proxy = AccountProtectionProxy.new( ba, 'russ' )

    assert_equal 100, ba.balance
    assert_equal 100, proxy.balance

    assert_equal 200, proxy.deposit(100)
    assert_equal 200, ba.balance
    assert_equal 200, proxy.balance

    assert_equal 180, proxy.withdraw(20)
    assert_equal 180, ba.balance
    assert_equal 180, proxy.balance
  end

  def test_permissions
    ba = BankAccount.new(100)
    proxy = AccountProtectionProxy.new( ba, 'russ' )
    assert_equal 125, proxy.deposit(25)

    ba = BankAccount.new(100)
    proxy = AccountProtectionProxy.new( ba, 'fred' )
    assert_raise(RuntimeError) { assert_equal 125, proxy.deposit(25) }
  end
  
end




