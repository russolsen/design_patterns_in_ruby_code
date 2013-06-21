#!/usr/bin/env ruby

require 'test/unit'
require 'ex1_computer'
require 'ex2_simple_builder'


class SimpleBuilderTest < Test::Unit::TestCase

  def setup
    @builder = ComputerBuilder.new
  end

  def test_default_computer
    computer = @builder.computer
    assert_equal :crt, computer.display
    assert_equal 1000, computer.motherboard.memory_size
    assert_equal 0, computer.drives.size
  end

  def test_turbo_computer
    @builder.turbo
    @builder.add_cd(true)
    @builder.add_dvd
    @builder.add_hard_disk(100000)
    computer = @builder.computer
    assert_equal 1000, computer.motherboard.memory_size
    assert_equal 3, computer.drives.size
    assert computer.drives.find {|d| d.type == :cd}
    assert computer.drives.find {|d| d.type == :dvd}
    assert computer.drives.find {|d| d.type == :hard_disk}
  end

  def test_setting_display
    @builder.display=:lcd
    @builder.add_hard_disk(100000)
    computer = @builder.computer
    assert_equal :lcd, computer.display
  end

  def test_setting_memory_size
    @builder.memory_size=5000
    @builder.add_hard_disk(100000)
    computer = @builder.computer
    assert_equal 5000, computer.motherboard.memory_size
  end
end



