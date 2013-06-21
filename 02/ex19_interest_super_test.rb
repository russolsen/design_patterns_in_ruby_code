#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex13_account'
require 'ex16_accessors'
require 'ex18_interest_account'

class InterestBearingAccountWithSuperTest < Test::Unit::TestCase

  def test_account
    ba = InterestBearingAccount.new('Russ', 0.1)
    assert_equal 'Russ', ba.owner
    assert_equal 0, ba.balance

    assert_equal 100, ba.deposit(100)
    assert_equal 100, ba.balance

    ba.deposit_interest

    assert_equal 110, ba.balance
  end
  
end
