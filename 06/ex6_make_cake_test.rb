#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require_relative 'ex1_task'
require_relative 'ex4_comp_task'
require_relative 'ex3_make_batter'
require_relative 'ex6_make_cake'



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



