#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require 'ex1_strategy'


class FormatterTest < Test::Unit::TestCase

  def test_abs_formatter
    f = Formatter.new
    assert_raise(RuntimeError){ f.output_report('title', ['text']) }
  end

  def test_html_formatter
    f = HTMLFormatter.new

    output = capture_output { f.output_report('AAAAA', ['BBBBB']) }
    assert /<html>/ =~ output
    assert /<title>AAAAA/ =~ output
    assert /<p>BBBBB/ =~ output
  end

  def test_plain_formatter
    f = PlainTextFormatter.new

    output = capture_output { f.output_report('AAAAA', ['BBBBB']) }
    assert /AAAAA/ =~ output
    assert /BBBBB/ =~ output
  end

  def test_report
    r = Report.new(HTMLFormatter.new)
    output = capture_output { r.output_report }
    assert /<html>/ =~ output
    assert /<title>Monthly/ =~ output
    assert /<p>really/ =~ output
  end


  def capture_output(&block)
    output = StringIO.new
    begin
       $stdout = output
       block.call
    ensure
       $stdout = STDOUT
    end
    output.string
  end

end


