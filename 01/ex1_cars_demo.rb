#!/usr/bin/env ruby

require '../example'

class Car
  def initialize
    puts "new car #{self}"
  end

  def drive(distance)
    puts "drive car #{self}: #{distance}"
  end
end

class AirPlane
  def initialize
    puts "new plane #{self}"
  end

  def fly(distance)
    puts "fly plane #{self}: #{distance}"
  end
end


example %q{
my_car = Car.new
my_car.drive(200)

}


example %q{
is_car = true

if is_car 
  my_car = Car.new
  my_car.drive(200)
else
  my_plane = AirPlane.new
  my_plane.fly(200)
end
}


