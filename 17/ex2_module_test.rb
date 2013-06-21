#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex2_module'

class MethodByMethodTest < Test::Unit::TestCase


  def test_new_animal_leopard
    leopard = new_animal(:meat, :night)
    assert leopard.kind_of?(Nocturnal)
    assert leopard.kind_of?(Carnivore)
    assert_equal 'sharp', leopard.teeth
    assert_equal 'meat', leopard.diet
    assert_equal 'day', leopard.sleep_time
    assert_equal 'night', leopard.awake_time
  end
  
  def test_new_animal_cow
    cow = new_animal(:plant, :day)
    assert cow.kind_of?(Diurnal)
    assert cow.kind_of?(Herbivore)
    assert_equal 'flat', cow.teeth
    assert_equal 'plant', cow.diet
    assert_equal 'night', cow.sleep_time
    assert_equal 'day', cow.awake_time
  end
  
end
