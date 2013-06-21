#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex6a_enum_portfolio'



class PortfolioEnumerableTest < Test::Unit::TestCase


  def test_portfolio
    a0 = Account.new('Bonds', 200)
    a1 = Account.new('Stocks', 500)
    a2 = Account.new('Cash', 100)

    p = Portfolio.new
    p.add_account(a0)
    p.add_account(a1)
    p.add_account(a2)

    count = 0
    p.each do |a|
      assert_equal(a0, a) if count == 0
      assert_equal(a1, a) if count == 1
      assert_equal(a2, a) if count == 2
      count += 1
    end

    assert p.include?(a0)
    assert p.include?(a1)
    assert p.include?(a2)
    assert ! p.include?('hello')

    assert p.any?{|t| t.balance > 1}
    assert p.all?{|t| t.balance > 1}
    assert_equal false, p.any?{|t| t.balance > 1000}
    assert_equal false, p.all?{|t| t.balance > 101}

    assert p.any?{|t| true}
  end
  
end



