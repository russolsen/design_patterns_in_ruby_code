#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_task'
#
# Array based composite task
#
require 'ex8_array'



class CompositeArrayTest < Test::Unit::TestCase


  def test_class
    task = CompositeTask.new('operators')
    assert task.kind_of?(Array)
  end
  
  def test_array_ops
    task = CompositeTask.new('operators')
    assert_equal 0, task.size
    task << Task.new('t0')
    assert_equal 1, task.size
    assert_equal 't0', task[0].name
    task << Task.new('t1')
    assert_equal 2, task.size
    assert_equal 't1', task[1].name
    task[1] = Task.new('new')
    assert_equal 'new', task[1].name
  end

  def test_get_time_required
    task = CompositeTask.new('operators')
    m1 =  MixTask.new
    task << m1
    assert_equal 3, task.get_time_required
    task << MixTask.new
    assert_equal 6, task.get_time_required

    task.delete(m1)
    assert_equal 3, task.get_time_required
  end

end



