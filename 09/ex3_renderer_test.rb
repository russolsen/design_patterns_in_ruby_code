#!/usr/bin/env ruby

require 'test/unit'
require 'pp'

require 'ex3_renderer'

class RendererTest < Test::Unit::TestCase

  def test_text_object
    t = TextObject.new( 'hello', 0.25, :blue)
    assert_equal 'hello', t.text
    assert_equal 0.25, t.size_inches
    assert_equal :blue, t.color
  end

  def test_british_text_object
    t = BritishTextObject.new( 'hello', 6, :blue)
    assert_equal 'hello', t.string
    assert_equal 6, t.size_mm
    assert_equal :blue, t.colour
  end

  def test_renderer
    t = TextObject.new( 'hello', 0.25, :blue)
    r = Renderer.new

    assert_equal 'hello/0.25/blue', r.render(t)
  end


end




