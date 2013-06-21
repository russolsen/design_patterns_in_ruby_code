#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_files'
require 'ex3_operators'

class ParserTest < Test::Unit::TestCase

  def test_operator_result_structure
    expr = (Bigger.new(2000) & Not.new(Writable.new)) | FileName.new("*.mp3")
    check_result_structure(expr)
  end

  def test_method_result_structure
    check_result_structure (bigger(2000) & except(writable))  | file_name("*.mp3")
  end

  def check_result_structure(expr)
    assert_equal Or, expr.class 
    expr1 = expr.instance_variable_get(:@expression1)
    expr2 = expr.instance_variable_get(:@expression2)

    assert_equal And, expr1.class
    assert_equal FileName, expr2.class

    and1 = expr1.instance_variable_get(:@expression1)
    and2 = expr1.instance_variable_get(:@expression2)

    assert_equal Bigger, and1.class
    assert_equal Not, and2.class
  end

  def test_operator_result_behavior
    expr1 = (Bigger.new(2000) & Not.new(Writable.new)) | FileName.new("*.mp3")
    expr2 = Or.new(And.new( Bigger.new(2000), Not.new(Writable.new)),  FileName.new("*.mp3"))

    assert_equal expr1.evaluate('dir2').sort,  expr2.evaluate('dir2').sort
  end

  def test_bigger_method
    expr = bigger(1000)
    assert_equal Bigger, expr.class
    assert_equal 1000, expr.instance_variable_get(:@size)
  end

  def test_name_method
    expr = file_name('foo')
    assert_equal FileName, expr.class
    assert_equal 'foo', expr.instance_variable_get(:@pattern)
  end

  def test_writable_method
    expr = writable
    assert_equal Writable, expr.class
  end

  def test_except_method
    expr = except(writable)
    assert_equal Not, expr.class
    assert_equal Writable, expr.instance_variable_get(:@expression).class
  end


end

