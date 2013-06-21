#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex13_account'
require 'ex15_manual_accessor'
require 'ex15a_manual_accessor'

class AccountTest < Test::Unit::TestCase

  def test_account
    ba = BankAccount.new('Russ')
    assert_equal 0, ba.balance

    assert_equal 200, ba.deposit(200)
    assert_equal 200, ba.balance
  end
  
end
