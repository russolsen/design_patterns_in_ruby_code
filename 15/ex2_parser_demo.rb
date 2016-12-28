#!/usr/bin/env ruby

require_relative '../example'

require_relative 'ex1_files'
require_relative 'ex2_parser'


example %q{

parser = Parser.new "and (and(bigger 1024)(filename *.mp3)) writable"
ast = parser.expression


pp ast
}

