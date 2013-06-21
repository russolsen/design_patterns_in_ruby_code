#!/usr/bin/env ruby

require 'test/unit'
require 'ex1_computer'
require 'ex3_polymorphic'


class PolymorphicBuilderTest < Test::Unit::TestCase

  def test_desktop_builder
    builder = DesktopBuilder.new
    builder.add_hard_disk(100000)
    builder.display=:crt
    builder.turbo
    computer = builder.computer

    assert_equal DesktopComputer, computer.class
    assert_equal :crt, computer.display
    assert_equal computer.drives[0].type, :hard_disk
    assert_equal computer.drives[0].size, 100000
    assert_equal computer.motherboard.memory_size, 1000
  end

  def test_laptop_buidler
    builder = LaptopBuilder.new
    builder.add_hard_disk(100000)
    builder.display=:lcd
    builder.turbo
    computer = builder.computer

    assert_equal LaptopComputer, computer.class
    assert_equal :lcd, computer.display
    assert_equal computer.drives[0].type, :hard_disk
    assert_equal computer.drives[0].size, 100000
    assert_equal computer.motherboard.memory_size, 1000

    assert_raise(RuntimeError){ builder.display=:crt }
  end

end


