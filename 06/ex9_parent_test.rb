#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_task'
#
# Task / Composite with parent pointers
#
require 'ex9_parent'

class OtherTask < Task
  
  def get_time_required
    return 42
  end
  
end  

class ParentTest < Test::Unit::TestCase


  def test_parent_add_delete
    c1 = CompositeTask.new('grandpa')
    assert_equal nil, c1.parent
    
    c2 = CompositeTask.new('dad')
    assert_equal nil, c2.parent
    
    c3 = OtherTask.new('kid')
    assert_equal nil, c2.parent
    
    c1.add_sub_task(c2)
    assert_equal nil, c1.parent
    assert_equal c1, c2.parent
    
    c2.add_sub_task(c3)
    assert_equal nil, c1.parent
    assert_equal c1, c2.parent
    assert_equal c2, c3.parent
    
    assert_equal 42, c1.get_time_required
    assert_equal 42, c2.get_time_required
    assert_equal 42, c3.get_time_required
    
    c1.remove_sub_task(c2)
    assert_equal nil, c1.parent
    assert_equal nil, c2.parent
    assert_equal c2, c3.parent
    
    assert_equal 0, c1.get_time_required
    assert_equal 42, c2.get_time_required
    assert_equal 42, c3.get_time_required
    
    c2.remove_sub_task(c3)
    assert_equal nil, c1.parent
    assert_equal nil, c2.parent
    assert_equal nil, c3.parent
    
    assert_equal 0, c1.get_time_required
    assert_equal 0, c2.get_time_required
    assert_equal 42, c3.get_time_required
  end
  
  def test_ancestor_walk
    c1 = CompositeTask.new('grandpa')   
    c2 = CompositeTask.new('dad')    
    c3 = OtherTask.new('kid')
    
    task = c1
    while task
      puts "task: #{task}"
      task = task.parent
    end
    
  end
  

end



