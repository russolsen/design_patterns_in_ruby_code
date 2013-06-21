#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'yaml'

require 'ex1_account'
require 'ex6_virtual_block'


class VirtualProxyTest < Test::Unit::TestCase

  def test_proxy
    ba = nil
    proxy = VirtualAccountProxy.new {ba = BankAccount.new(100)}

    assert_nil ba

    assert_equal 100, proxy.balance
    assert_not_nil ba

    assert_equal 200, proxy.deposit(100)
    assert_equal 200, proxy.balance

    assert_equal 180, proxy.withdraw(20)
    assert_equal 180, proxy.balance
    assert_not_nil ba
  end

end




