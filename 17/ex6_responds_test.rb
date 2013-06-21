#!/usr/bin/env ruby
require 'test/unit'
require 'pp'

require 'ex4_base'
require 'ex3_members'
require 'ex5_member_of'

class MemberOfTest < Test::Unit::TestCase

  def test_tiger_and_jungle
    jungle = Jungle.new('southern jungle')
    tony = Tiger.new('tony')

    assert member_of_composite?(jungle, :population)
    assert ! member_of_composite?(jungle, :nonsense)
    assert member_of_composite?(tony, :population)
    assert member_of_composite?(tony, :classification)
    assert ! member_of_composite?(tony, :nonsense)
    assert ! member_of_composite?("hello", :population)
    assert ! member_of_composite?(44, :population)
    assert ! member_of_composite?(false, :population)
    assert ! member_of_composite?(nil, :population)
  end

end
