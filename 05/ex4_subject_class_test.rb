#!/usr/bin/env ruby

require 'test/unit'
require 'pp'
require 'stringio'

require 'ex4_subject_class'
require 'ex4_subject_test_methods_module'

class SubjectClassTest < Test::Unit::TestCase
  include SubjectTestMethods
end



