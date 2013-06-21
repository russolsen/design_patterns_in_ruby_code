#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex5_change_class'

class ModifiedBTOClassTest < Test::Unit::TestCase

  def test_text_object
    t = TextObject.new( 'hello', 0.25, :blue)
  end

  def test_british_text_object
    t = BritishTextObject.new( 'hello', 25.4, :blue)

    assert_equal 'hello', t.string
    assert_equal 25.4, t.size_mm
    assert_equal :blue, t.colour

    assert_equal 'hello', t.text
    assert_equal 1, t.size_inches
    assert_equal :blue, t.color
  end

  def test_renderer
    t = BritishTextObject.new( 'cheers', 25.4, :red)
    r = Renderer.new

    assert_equal 'cheers/1.0/red', r.render(t)
  end


end




