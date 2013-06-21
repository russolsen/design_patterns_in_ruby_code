#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex11_readable'

class BankAccountTest < Test::Unit::TestCase

  def test_account
    a = BankAccount.new(100)
    assert_equal 100, a.balance
    a = BankAccount.new(99)
    assert_equal 99, a.balance

  end
end
