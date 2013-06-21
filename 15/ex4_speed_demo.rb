#!/usr/bin/env ruby

require '../example'


class Add

  def initialize(a, b)
    @a = a
    @b = b
  end

  def interpret
    @a.interpret + @b.interpret
  end

end

class Constant

  def initialize(value)
    @value = value
  end

  def interpret
    @value
  end

end

example %q{

puts \
Add.new(Constant.new(2), Constant.new(2)).interpret


puts \
2 + 2

}



