#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'yaml'

require 'ex1_account'
require 'ex5_virtual'


class VirtualProxyTest < Test::Unit::TestCase
  def test_proxy
    proxy = VirtualAccountProxy.new( 100 )
    assert_nil proxy.instance_variable_get(:@subject)

    assert_equal 100, proxy.balance
    assert_not_nil proxy.instance_variable_get(:@subject)

    assert_equal 200, proxy.deposit(100)
    assert_equal 200, proxy.balance

    assert_equal 180, proxy.withdraw(20)
    assert_equal 180, proxy.balance
    assert_not_nil proxy.instance_variable_get(:@subject)
  end
end




