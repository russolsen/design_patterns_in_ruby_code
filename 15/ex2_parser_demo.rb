#!/usr/bin/env ruby

require '../example'

require 'ex1_files'
require 'ex2_parser'


example %q{

parser = Parser.new "and (and(bigger 1024)(filename *.mp3)) writable"
ast = parser.expression


pp ast
}

