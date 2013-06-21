#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_task'
require 'ex3_make_batter'



class MakeBatterTest < Test::Unit::TestCase


  def test_make_batter
   t = MakeBatterTask.new
   assert_equal t.name, 'Make batter'
   subtasks =  t.instance_variable_get(:@sub_tasks).clone
   assert_equal 3, subtasks.size
   assert_equal 8, t.get_time_required
   t.remove_sub_task subtasks[0]
   t.remove_sub_task subtasks[1]
   t.remove_sub_task subtasks[2]
   assert_equal 0, t.get_time_required
  end
  

end



