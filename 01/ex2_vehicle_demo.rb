#!/usr/bin/env ruby

require '../example'

class Car
  def initialize
    puts "new car #{self}"
  end

  def travel(distance)
    puts "drive car #{self}: #{distance}"
  end
end

class AirPlane
  def initialize
    puts "new plane #{self}"
  end

  def travel(distance)
    puts "fly plane #{self}: #{distance}"
  end
end

def get_vehicle
  if rand > 0.5
    AirPlane.new
  else
    Car.new
  end
end

example %q{
my_vehicle = get_vehicle
my_vehicle.travel(200)
}
