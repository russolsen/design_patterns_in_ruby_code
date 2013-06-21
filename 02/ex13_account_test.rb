#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex13_account'

class AccountTest < Test::Unit::TestCase
  def test_account
    ba = BankAccount.new('Russ')
    assert_equal 0, ba.instance_variable_get(:@balance)

    assert_equal 200, ba.deposit(200)
    assert_equal 200, ba.instance_variable_get(:@balance)

    assert_equal 180, ba.withdraw(20)
    assert_equal 180, ba.instance_variable_get(:@balance)
  end
end
