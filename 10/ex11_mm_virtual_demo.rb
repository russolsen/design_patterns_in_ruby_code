#!/usr/bin/env ruby
require '../example'

require 'ex11_mm_virtual'
require 'ex1_account'


example %q{
array = VirtualProxy.new { Array.new }

array << 'hello'
array << 'out'
array << 'there'
}

