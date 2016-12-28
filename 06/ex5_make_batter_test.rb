#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_task'
require_relative 'ex4_comp_task'
require_relative 'ex5_make_batter'


class MakeBatterTest < Test::Unit::TestCase
  def test_add_delete
    task = MakeBatterTask.new
    assert_equal 8, task.get_time_required
  end
end



