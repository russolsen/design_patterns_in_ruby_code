#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex1_files'
require 'ex2_parser'



class ParserTest < Test::Unit::TestCase

  def test_parser
    same_expression All.new, 'all'
    same_expression Not.new(All.new), 'not all'
    same_expression Bigger.new(1024), 'bigger 1024'
    same_expression FileName.new('*.mp3'), 'filename *.mp3'
    same_expression Writable.new, 'writable'
    same_expression Not.new(Writable.new), 'not writable'
    same_expression And.new(And.new(Bigger.new(1024), FileName.new('*.mp3')), Writable.new),
                    'and(and(bigger 1024) (filename *.mp3)) writable'
  end


  def same_expression(expected_expr, string_expr)
    ['dir1', 'dir2', 'dir3'].each {|dir| same_expression_for_dir(dir, expected_expr, string_expr)}
  end

  def same_expression_for_dir(dir, expected_expr, string_expr)
    expected = expected_expr.evaluate(dir).sort
    actual = Parser.new(string_expr).expression.evaluate(dir).sort
    assert_equal expected, actual
  end

end

