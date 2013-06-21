#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_task'
require 'ex4_comp_task'


class CompTaskTest < Test::Unit::TestCase


  def test_add_delete
    c1 = CompositeTask.new('grandpa')
    c2 = CompositeTask.new('dad')
    c3 = MixTask.new
    
    c1.add_sub_task(c2)  
    c2.add_sub_task(c3)
    
    assert_equal 3, c1.get_time_required
    assert_equal 3, c2.get_time_required
    assert_equal 3, c3.get_time_required
    
    c1.remove_sub_task(c2)
    assert_equal 0, c1.get_time_required
    assert_equal 3, c2.get_time_required
    assert_equal 3, c3.get_time_required
    
    c2.remove_sub_task(c3)
    
    assert_equal 0, c1.get_time_required
    assert_equal 0, c2.get_time_required
    assert_equal 3, c3.get_time_required
    
    c1.add_sub_task( MixTask.new )
    c1.add_sub_task( MixTask.new )
    assert_equal 6, c1.get_time_required
  end
  

end



