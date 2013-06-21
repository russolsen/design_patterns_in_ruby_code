#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex12_abuse_child'



class AbuseChildTest < Test::Unit::TestCase


  def test_add_delete
    c1 = CompositeTask.new('grandpa')
    c2 = CompositeTask.new('dad')
    c2.add_sub_task(MixTask.new)
    c2.add_sub_task(MixTask.new)
    c2.add_sub_task(MixTask.new)
    
    c1.add_sub_task(c2)  
    c1.add_sub_task(MixTask.new)
   
    #
    # This is four, the correct answer
    #
    assert_equal 4, c1.total_number_basic_tasks

  end
  

end



