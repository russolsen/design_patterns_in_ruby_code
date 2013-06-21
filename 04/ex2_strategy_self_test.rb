#!/usr/bin/env ruby

require 'test/unit'
require 'stringio'

require 'ex2_strategy_self'


class FormatterTest < Test::Unit::TestCase

  def test_html_report
    r = Report.new(HTMLFormatter.new)

    output = capture_output { r.output_report }
    assert /<html>/ =~ output
    assert /<title>Monthly/ =~ output
    assert /<p>Things/ =~ output
  end

  def test_plain_report
    r = Report.new(PlainTextFormatter.new)

    output = capture_output { r.output_report }
    assert /Monthly/ =~ output
    assert /Things/ =~ output
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


