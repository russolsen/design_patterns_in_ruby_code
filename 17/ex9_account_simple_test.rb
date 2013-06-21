#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex9_account_simple'

class BankAccountTest < Test::Unit::TestCase

  def test_account
    a = BankAccount.new(100)
    assert_equal 100, a.balance

    a.balance = 44
    assert_equal 44, a.balance
  end
end
