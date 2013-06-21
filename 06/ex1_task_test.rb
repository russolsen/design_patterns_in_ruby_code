#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_task'



class TaskTest < Test::Unit::TestCase

  def test_task
    task = Task.new('task')
    assert_equal 'task', task.name
    assert_equal 0, task.get_time_required
  end

  def test_add_dry_task
    task = AddDryIngredientsTask.new
    assert_equal 'Add dry ingredients', task.name
    assert_equal 1, task.get_time_required
  end

  def test_mix_task
    task = MixTask.new
    assert_equal 3, task.get_time_required
  end

  def test_add_liq_task
    task = AddLiquidsTask.new
    assert_equal 4, task.get_time_required
  end

end



