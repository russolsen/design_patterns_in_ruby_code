#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex9_change_resis_for_each'



class ChangeResistantForEachTest < Test::Unit::TestCase


  def test_iterator
    array = ['red', 'green', 'blue', 'purple']
    
    i = 0
    change_resistant_for_each_element(array) do |color|
      assert_equal array[i], color
      i += 1
    end
      
  end
  
  def test_change_resistance
    array = ['red', 'green', 'blue', 'purple']
    reference_array = array.clone
    
    i = 0
    change_resistant_for_each_element(array) do |color|
      array.delete('red') if i == 0
      array.delete('green') if i == 0
      assert_equal reference_array[i], color
      i += 1
    end
    
  end
  

end



