#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex11_abuse_child'



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
    # This should be four, but we are demoing the mistake.
    #
    assert_equal 2, c1.total_number_basic_tasks

  end
  

end



