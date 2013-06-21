#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_array_iterator'



class ArrayIteratorTest < Test::Unit::TestCase


  def test_iterator
    array = ['aaa', 'bbb', 'ccc']
    
    i = ArrayIterator.new(array)
    
    assert_equal( 'aaa', i.item )
    assert_equal( 'aaa', i.next_item )
    assert i.has_next?
    
    assert_equal( 'bbb', i.item )
    assert_equal( 'bbb', i.next_item )
    assert i.has_next?
    
    assert_equal( 'ccc', i.item )
    assert_equal( 'ccc', i.next_item )
    assert (not i.has_next?)
      
  end
  
  def test_empty_array_iterator
    array = []
    i = ArrayIterator.new(array)
    assert (not i.has_next?)
  end
  

end



