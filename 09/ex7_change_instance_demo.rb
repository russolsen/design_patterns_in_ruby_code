#!/usr/bin/env ruby

require '../example'

require 'ex3_renderer'

example %q{

bto = BritishTextObject.new('hello', 50.8, :blue)

class << bto
  def color
    colour
  end

  def text
    string
  end

  def size_inches
    return size_mm/25.4
  end
end


puts bto.text
puts bto.color
puts bto.size_inches


}
