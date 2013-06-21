#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_account'

class AccountTest < Test::Unit::TestCase


  def test_account
    ba = BankAccount.new(100)
    assert_equal 100, ba.balance

    assert_equal 200, ba.deposit(100)
    assert_equal 200, ba.balance

    assert_equal 180, ba.withdraw(20)
    assert_equal 180, ba.balance
  end
  
end
