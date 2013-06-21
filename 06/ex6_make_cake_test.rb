#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_task'
require 'ex4_comp_task'
require 'ex3_make_batter'
require 'ex6_make_cake'



class MakeCakeTest < Test::Unit::TestCase

  def setup
    @cake_task = MakeCakeTask.new
  end

  def test_time_required
    assert_equal 114, @cake_task.get_time_required
  end

  def test_size
    class << @cake_task
      def size
        @sub_tasks.size
      end
    end
    assert_equal 5, @cake_task.size
  end

end



