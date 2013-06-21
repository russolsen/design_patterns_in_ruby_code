#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex5_merge'



class ArrayIteratorTest < Test::Unit::TestCase


  def test_typical_merge
    a1 = [-999, -1, 0, 10, 20 ]   
    a2 = [-3, 1, 2, 999 ]
    result = check_merge(a1, a2)
  end
  
  def test_empty_merge
    check_merge([], [])
  end
  
  def test_edge_cases
    check_merge([1], [])
    check_merge([],  [1])
    check_merge([1], [1])
    check_merge([1], [2])
    check_merge([2], [1])
    check_merge([1, 2, 3], [101, 999])
    check_merge([101, 999], [1, 2, 3])
  end
  
  def check_merge(a1, a2)
    result = merge(a1, a2)
    assert_equal( a1.size + a2.size, result.size)
    a1.each {|element| assert(result.member?(element))}
    a2.each {|element| assert(result.member?(element))}
    (result.size-1).times { |i| assert( result[i] <= result[i+1] ) }
    assert_equal (a1 + a2).sort, result
  end
  
end



