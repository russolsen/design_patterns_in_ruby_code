#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex14_names'

class NameBasedFactoryTest < Test::Unit::TestCase

  def test_name_based_factory
    f = IOFactory.new('HTML')
    assert_equal HTMLReader, f.new_reader.class
    assert_equal HTMLWriter, f.new_writer.class

    f = IOFactory.new('PDF')
    assert_equal PDFReader, f.new_reader.class
    assert_equal PDFWriter, f.new_writer.class
  end

end
