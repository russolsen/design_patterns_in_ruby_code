#!/usr/bin/env ruby
require '../example'

require 'forwardable'

example %q{

class Engine
  def start_engine
    # Start the engine...
  end

  def stop_engine
    # Stop the engine
  end
end

class Car
  extend Forwardable

  def_delegators :@engine, :start_engine, :stop_engine

  def initialize
    @engine = Engine.new
  end
end

car = Car.new
car.start_engine
car.stop_engine
}

 

