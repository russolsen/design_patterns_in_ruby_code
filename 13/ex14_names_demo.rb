#!/usr/bin/env ruby

require_relative '../example'
require_relative 'ex14_names'

example %q{

html_factory = IOFactory.new('HTML')
html_reader = html_factory.new_reader

pdf_factory = IOFactory.new('PDF')
pdf_writer = pdf_factory.new_writer
}

