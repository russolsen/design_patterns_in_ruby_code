#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require_relative 'ex5_subject_module'

#
# Use the same test methods as ex4
#
require_relative 'ex4_subject_test_methods_module'

class SubjectClassTest < Test::Unit::TestCase
  include SubjectTestMethods
end



