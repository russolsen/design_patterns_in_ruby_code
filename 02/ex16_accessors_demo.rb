#!/usr/bin/env ruby

require '../example'

example %q{

class Example
  attr_accessor  :balance, :grace, :agility
end

e = Example.new
e.balance=:good
e.grace=:ok
e.agility=:bad

pp e
}


example %q{

class Example
  attr_reader :name

  def initialize
    @name = 'russ'
  end
end

e = Example.new
puts e.name

}

example %q{

class Example
  attr_writer :name

  def initialize
    @name = 'russ'
  end
end

e = Example.new
puts e.instance_variable_get(:@name)

e.name = 'Fred'
puts e.instance_variable_get(:@name)

}
